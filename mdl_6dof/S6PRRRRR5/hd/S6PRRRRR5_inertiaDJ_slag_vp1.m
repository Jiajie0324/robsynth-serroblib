% Calculate time derivative of joint inertia matrix for
% S6PRRRRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d5,d6,theta1]';
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
% MqD [6x6]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:13
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6PRRRRR5_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRR5_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRR5_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRRRR5_inertiaDJ_slag_vp1: pkin has to be [13x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PRRRRR5_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PRRRRR5_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PRRRRR5_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:04:02
% EndTime: 2019-03-09 01:05:19
% DurationCPUTime: 44.74s
% Computational Cost: add. (372055->1568), mult. (1045031->2128), div. (0->0), fcn. (1261721->16), ass. (0->627)
t560 = qJ(5) + qJ(6);
t557 = sin(t560);
t558 = cos(t560);
t561 = sin(pkin(13));
t564 = cos(pkin(13));
t569 = sin(qJ(2));
t565 = cos(pkin(6));
t571 = cos(qJ(2));
t706 = t565 * t571;
t549 = -t561 * t706 - t564 * t569;
t568 = sin(qJ(3));
t707 = t565 * t569;
t592 = t561 * t707 - t564 * t571;
t562 = sin(pkin(7));
t563 = sin(pkin(6));
t711 = t562 * t563;
t722 = cos(pkin(7));
t731 = cos(qJ(3));
t495 = -t592 * t731 + (t549 * t722 + t561 * t711) * t568;
t540 = t549 * qJD(2);
t541 = t592 * qJD(2);
t607 = t722 * t731;
t471 = qJD(3) * t495 + t540 * t568 - t541 * t607;
t650 = t563 * t722;
t527 = -t549 * t562 + t561 * t650;
t567 = sin(qJ(4));
t730 = cos(qJ(4));
t481 = t495 * t730 + t527 * t567;
t559 = qJD(5) + qJD(6);
t634 = -t481 * t559 + t471;
t654 = t562 * t731;
t622 = t563 * t654;
t574 = t549 * t607 + t561 * t622 + t568 * t592;
t649 = t568 * t722;
t472 = qJD(3) * t574 + t540 * t731 + t541 * t649;
t590 = -t495 * t567 + t527 * t730;
t710 = t562 * t567;
t405 = qJD(4) * t590 + t472 * t730 - t541 * t710;
t637 = -t559 * t574 + t405;
t304 = -t557 * t637 + t558 * t634;
t305 = t557 * t634 + t558 * t637;
t653 = t562 * t730;
t404 = qJD(4) * t481 + t472 * t567 + t541 * t653;
t221 = rSges(7,1) * t305 + rSges(7,2) * t304 + rSges(7,3) * t404;
t429 = -t481 * t557 - t558 * t574;
t430 = t481 * t558 - t557 * t574;
t339 = rSges(7,1) * t430 + rSges(7,2) * t429 - rSges(7,3) * t590;
t547 = -t561 * t569 + t564 * t706;
t538 = t547 * qJD(2);
t548 = t561 * t571 + t564 * t707;
t539 = t548 * qJD(2);
t573 = t547 * t607 - t548 * t568 - t564 * t622;
t470 = qJD(3) * t573 + t538 * t731 - t539 * t649;
t648 = t722 * t547;
t655 = t548 * t731;
t708 = t563 * t564;
t493 = t655 + (-t562 * t708 + t648) * t568;
t526 = -t547 * t562 - t564 * t650;
t479 = t493 * t730 + t526 * t567;
t402 = qJD(4) * t479 + t470 * t567 - t539 * t653;
t591 = -t493 * t567 + t526 * t730;
t709 = t562 * t568;
t651 = qJD(3) * t709;
t469 = t538 * t568 + t539 * t607 - t651 * t708 + (t568 * t648 + t655) * qJD(3);
t635 = -t479 * t559 + t469;
t403 = qJD(4) * t591 + t470 * t730 + t539 * t710;
t638 = -t559 * t573 + t403;
t302 = -t557 * t638 + t558 * t635;
t303 = t557 * t635 + t558 * t638;
t220 = rSges(7,1) * t303 + rSges(7,2) * t302 + rSges(7,3) * t402;
t427 = -t479 * t557 - t558 * t573;
t428 = t479 * t558 - t557 * t573;
t338 = rSges(7,1) * t428 + rSges(7,2) * t427 - rSges(7,3) * t591;
t704 = -t220 * t590 + t404 * t338;
t134 = t221 * t591 - t402 * t339 + t704;
t763 = t563 / 0.2e1;
t732 = t565 / 0.2e1;
t325 = t403 * pkin(4) + t402 * pkin(11);
t424 = t479 * pkin(4) - pkin(11) * t591;
t694 = -t325 * t574 + t471 * t424;
t714 = t539 * t562;
t510 = pkin(2) * t538 + pkin(9) * t714;
t713 = t541 * t562;
t511 = pkin(2) * t540 - pkin(9) * t713;
t712 = t561 * t563;
t673 = t510 * t712 + t511 * t708;
t400 = rSges(4,1) * t472 - rSges(4,2) * t471 - rSges(4,3) * t713;
t295 = rSges(5,1) * t405 - rSges(5,2) * t404 + rSges(5,3) * t471;
t566 = sin(qJ(5));
t570 = cos(qJ(5));
t433 = -t481 * t566 - t570 * t574;
t581 = qJD(5) * t433 + t471 * t566;
t724 = pkin(5) * t570;
t233 = pkin(5) * t581 + pkin(12) * t404 + t405 * t724;
t701 = t221 + t233;
t716 = t574 * t566;
t434 = t481 * t570 - t716;
t309 = -qJD(5) * t434 - t405 * t566 + t471 * t570;
t310 = t405 * t570 + t581;
t231 = rSges(6,1) * t310 + rSges(6,2) * t309 + rSges(6,3) * t404;
t727 = m(6) * t231;
t576 = -m(5) * t295 - m(7) * t701 - t727;
t762 = -m(4) * t400 + t576;
t761 = -t568 * t569 + t571 * t607;
t753 = m(7) / 0.2e1;
t759 = m(6) / 0.2e1 + t753;
t390 = rSges(5,1) * t481 + rSges(5,2) * t590 - rSges(5,3) * t574;
t330 = -pkin(5) * t716 - pkin(12) * t590 + t481 * t724;
t691 = t330 + t339;
t347 = rSges(6,1) * t434 + rSges(6,2) * t433 - rSges(6,3) * t590;
t725 = m(6) * t347;
t758 = -m(5) * t390 - m(7) * t691 - t725;
t389 = rSges(5,1) * t479 + rSges(5,2) * t591 - rSges(5,3) * t573;
t717 = t573 * t566;
t329 = -pkin(5) * t717 - pkin(12) * t591 + t479 * t724;
t692 = t329 + t338;
t431 = -t479 * t566 - t570 * t573;
t432 = t479 * t570 - t717;
t346 = rSges(6,1) * t432 + rSges(6,2) * t431 - rSges(6,3) * t591;
t726 = m(6) * t346;
t757 = m(5) * t389 + m(7) * t692 + t726;
t756 = -0.2e1 * t526;
t755 = m(5) / 0.2e1;
t752 = t402 / 0.2e1;
t751 = t404 / 0.2e1;
t621 = t565 * t654;
t489 = qJD(3) * t621 + (t761 * qJD(3) + (-t569 * t649 + t571 * t731) * qJD(2)) * t563;
t583 = t569 * t731 + t571 * t649;
t525 = t563 * t583 + t565 * t709;
t546 = t565 * t722 - t571 * t711;
t497 = t525 * t730 + t546 * t567;
t672 = qJD(2) * t563;
t652 = t569 * t672;
t620 = t562 * t652;
t458 = qJD(4) * t497 + t489 * t567 - t620 * t730;
t750 = t458 / 0.2e1;
t749 = t469 / 0.2e1;
t748 = t471 / 0.2e1;
t747 = -t591 / 0.2e1;
t746 = -t590 / 0.2e1;
t488 = t565 * t651 + (t583 * qJD(3) + (t568 * t571 + t569 * t607) * qJD(2)) * t563;
t745 = t488 / 0.2e1;
t744 = -t573 / 0.2e1;
t743 = -t574 / 0.2e1;
t589 = -t525 * t567 + t546 * t730;
t742 = -t589 / 0.2e1;
t524 = -t563 * t761 - t621;
t741 = t524 / 0.2e1;
t740 = t526 / 0.2e1;
t739 = t527 / 0.2e1;
t738 = t546 / 0.2e1;
t737 = -t561 / 0.2e1;
t736 = t561 / 0.2e1;
t735 = -t564 / 0.2e1;
t734 = t564 / 0.2e1;
t733 = -t565 / 0.2e1;
t307 = -qJD(5) * t432 - t403 * t566 + t469 * t570;
t582 = qJD(5) * t431 + t469 * t566;
t308 = t403 * t570 + t582;
t230 = rSges(6,1) * t308 + rSges(6,2) * t307 + rSges(6,3) * t402;
t728 = m(6) * t230;
t721 = Icges(3,4) * t569;
t720 = Icges(3,4) * t571;
t715 = t524 * t566;
t703 = -t221 * t589 + t458 * t339;
t232 = pkin(5) * t582 + pkin(12) * t402 + t403 * t724;
t702 = t220 + t232;
t700 = -t230 - t325;
t326 = t405 * pkin(4) + t404 * pkin(11);
t699 = -t231 - t326;
t633 = -t497 * t559 + t488;
t459 = qJD(4) * t589 + t489 * t730 + t567 * t620;
t636 = t524 * t559 + t459;
t360 = -t557 * t636 + t558 * t633;
t361 = t557 * t633 + t558 * t636;
t264 = rSges(7,1) * t361 + rSges(7,2) * t360 + rSges(7,3) * t458;
t473 = -t497 * t557 + t524 * t558;
t474 = t497 * t558 + t524 * t557;
t375 = rSges(7,1) * t474 + rSges(7,2) * t473 - rSges(7,3) * t589;
t698 = -t264 * t591 + t402 * t375;
t476 = -t497 * t566 + t524 * t570;
t580 = qJD(5) * t476 + t488 * t566;
t269 = pkin(5) * t580 + pkin(12) * t458 + t459 * t724;
t697 = t264 + t269;
t477 = t497 * t570 + t715;
t366 = -qJD(5) * t477 - t459 * t566 + t488 * t570;
t367 = t459 * t570 + t580;
t268 = rSges(6,1) * t367 + rSges(6,2) * t366 + rSges(6,3) * t458;
t370 = t459 * pkin(4) + t458 * pkin(11);
t696 = -t268 - t370;
t294 = rSges(5,1) * t403 - rSges(5,2) * t402 + rSges(5,3) * t469;
t414 = pkin(3) * t470 + pkin(10) * t469;
t695 = -t294 - t414;
t425 = t481 * pkin(4) - pkin(11) * t590;
t693 = t524 * t326 + t488 * t425;
t690 = -t346 - t424;
t689 = -t347 - t425;
t356 = rSges(5,1) * t459 - rSges(5,2) * t458 + rSges(5,3) * t488;
t462 = pkin(3) * t489 + pkin(10) * t488;
t688 = -t356 - t462;
t468 = t497 * pkin(4) - pkin(11) * t589;
t687 = -t370 * t573 + t469 * t468;
t435 = t526 * t462;
t686 = t526 * t370 + t435;
t371 = pkin(5) * t715 - pkin(12) * t589 + t497 * t724;
t685 = t371 + t375;
t378 = t527 * t414;
t467 = pkin(3) * t495 - pkin(10) * t574;
t452 = t467 * t714;
t684 = t378 - t452;
t466 = pkin(3) * t493 - pkin(10) * t573;
t683 = -t389 - t466;
t391 = rSges(6,1) * t477 + rSges(6,2) * t476 - rSges(6,3) * t589;
t682 = -t391 - t468;
t415 = pkin(3) * t472 + pkin(10) * t471;
t505 = t565 * t511;
t681 = t565 * t415 + t505;
t448 = t527 * t466;
t680 = t527 * t424 + t448;
t460 = t546 * t467;
t679 = t546 * t425 + t460;
t447 = rSges(5,1) * t497 + rSges(5,2) * t589 + rSges(5,3) * t524;
t487 = pkin(3) * t525 + pkin(10) * t524;
t678 = -t447 - t487;
t475 = t526 * t487;
t677 = t526 * t468 + t475;
t504 = -pkin(2) * t592 + pkin(9) * t527;
t498 = t565 * t504;
t676 = t565 * t467 + t498;
t503 = t548 * pkin(2) + pkin(9) * t526;
t675 = t503 * t712 + t504 * t708;
t674 = 0.2e1 * t673;
t669 = -0.2e1 * t713;
t668 = -t325 - t702;
t667 = -t326 - t701;
t666 = -t414 + t700;
t665 = -t370 - t697;
t664 = -t462 + t696;
t663 = t565 * t326 + t681;
t662 = -t424 - t692;
t661 = -t425 - t691;
t660 = -t466 + t690;
t659 = -t468 - t685;
t658 = -t487 + t682;
t657 = t546 * t415 + t467 * t620 + t487 * t713;
t656 = t565 * t425 + t676;
t647 = 0.2e1 * m(4);
t645 = 0.2e1 * m(5);
t643 = 0.2e1 * m(6);
t641 = 0.2e1 * m(7);
t457 = rSges(4,1) * t489 - rSges(4,2) * t488 + rSges(4,3) * t620;
t533 = (pkin(9) * t562 * t569 + pkin(2) * t571) * t672;
t640 = (-t457 - t533) * t563;
t486 = rSges(4,1) * t525 - rSges(4,2) * t524 + rSges(4,3) * t546;
t528 = t563 * t569 * pkin(2) + pkin(9) * t546;
t639 = (-t486 - t528) * t563;
t632 = -t414 + t668;
t631 = -t462 + t665;
t314 = t527 * t325;
t418 = t425 * t714;
t629 = t314 - t418 + t684;
t628 = -t466 + t662;
t627 = -t487 + t659;
t626 = t415 * t756 + t466 * t669 + 0.2e1 * t378 - 0.2e1 * t452;
t408 = t414 * t712;
t409 = t415 * t708;
t625 = 0.2e1 * t408 + 0.2e1 * t409 + t674;
t624 = t408 + t409 + t673;
t623 = t466 * t712 + t467 * t708 + t675;
t619 = t652 / 0.2e1;
t332 = Icges(7,5) * t428 + Icges(7,6) * t427 - Icges(7,3) * t591;
t334 = Icges(7,4) * t428 + Icges(7,2) * t427 - Icges(7,6) * t591;
t336 = Icges(7,1) * t428 + Icges(7,4) * t427 - Icges(7,5) * t591;
t185 = -t332 * t590 + t334 * t429 + t336 * t430;
t333 = Icges(7,5) * t430 + Icges(7,6) * t429 - Icges(7,3) * t590;
t335 = Icges(7,4) * t430 + Icges(7,2) * t429 - Icges(7,6) * t590;
t337 = Icges(7,1) * t430 + Icges(7,4) * t429 - Icges(7,5) * t590;
t186 = -t333 * t590 + t335 * t429 + t337 * t430;
t372 = Icges(7,5) * t474 + Icges(7,6) * t473 - Icges(7,3) * t589;
t373 = Icges(7,4) * t474 + Icges(7,2) * t473 - Icges(7,6) * t589;
t374 = Icges(7,1) * t474 + Icges(7,4) * t473 - Icges(7,5) * t589;
t235 = -t372 * t590 + t373 * t429 + t374 * t430;
t214 = Icges(7,5) * t303 + Icges(7,6) * t302 + Icges(7,3) * t402;
t216 = Icges(7,4) * t303 + Icges(7,2) * t302 + Icges(7,6) * t402;
t218 = Icges(7,1) * t303 + Icges(7,4) * t302 + Icges(7,5) * t402;
t64 = -t214 * t590 + t216 * t429 + t218 * t430 + t304 * t334 + t305 * t336 + t332 * t404;
t215 = Icges(7,5) * t305 + Icges(7,6) * t304 + Icges(7,3) * t404;
t217 = Icges(7,4) * t305 + Icges(7,2) * t304 + Icges(7,6) * t404;
t219 = Icges(7,1) * t305 + Icges(7,4) * t304 + Icges(7,5) * t404;
t65 = -t215 * t590 + t217 * t429 + t219 * t430 + t304 * t335 + t305 * t337 + t333 * t404;
t261 = Icges(7,5) * t361 + Icges(7,6) * t360 + Icges(7,3) * t458;
t262 = Icges(7,4) * t361 + Icges(7,2) * t360 + Icges(7,6) * t458;
t263 = Icges(7,1) * t361 + Icges(7,4) * t360 + Icges(7,5) * t458;
t99 = -t261 * t590 + t262 * t429 + t263 * t430 + t304 * t373 + t305 * t374 + t372 * t404;
t20 = t526 * t64 + t527 * t65 + t546 * t99 + (t185 * t539 - t186 * t541 + t235 * t652) * t562;
t265 = Icges(6,5) * t367 + Icges(6,6) * t366 + Icges(6,3) * t458;
t266 = Icges(6,4) * t367 + Icges(6,2) * t366 + Icges(6,6) * t458;
t267 = Icges(6,1) * t367 + Icges(6,4) * t366 + Icges(6,5) * t458;
t380 = Icges(6,5) * t477 + Icges(6,6) * t476 - Icges(6,3) * t589;
t383 = Icges(6,4) * t477 + Icges(6,2) * t476 - Icges(6,6) * t589;
t386 = Icges(6,1) * t477 + Icges(6,4) * t476 - Icges(6,5) * t589;
t107 = -t265 * t590 + t266 * t433 + t267 * t434 + t309 * t383 + t310 * t386 + t380 * t404;
t340 = Icges(6,5) * t432 + Icges(6,6) * t431 - Icges(6,3) * t591;
t342 = Icges(6,4) * t432 + Icges(6,2) * t431 - Icges(6,6) * t591;
t344 = Icges(6,1) * t432 + Icges(6,4) * t431 - Icges(6,5) * t591;
t189 = -t340 * t590 + t342 * t433 + t344 * t434;
t341 = Icges(6,5) * t434 + Icges(6,6) * t433 - Icges(6,3) * t590;
t343 = Icges(6,4) * t434 + Icges(6,2) * t433 - Icges(6,6) * t590;
t345 = Icges(6,1) * t434 + Icges(6,4) * t433 - Icges(6,5) * t590;
t190 = -t341 * t590 + t343 * t433 + t345 * t434;
t237 = -t380 * t590 + t383 * t433 + t386 * t434;
t224 = Icges(6,5) * t308 + Icges(6,6) * t307 + Icges(6,3) * t402;
t226 = Icges(6,4) * t308 + Icges(6,2) * t307 + Icges(6,6) * t402;
t228 = Icges(6,1) * t308 + Icges(6,4) * t307 + Icges(6,5) * t402;
t68 = -t224 * t590 + t226 * t433 + t228 * t434 + t309 * t342 + t310 * t344 + t340 * t404;
t225 = Icges(6,5) * t310 + Icges(6,6) * t309 + Icges(6,3) * t404;
t227 = Icges(6,4) * t310 + Icges(6,2) * t309 + Icges(6,6) * t404;
t229 = Icges(6,1) * t310 + Icges(6,4) * t309 + Icges(6,5) * t404;
t69 = -t225 * t590 + t227 * t433 + t229 * t434 + t309 * t343 + t310 * t345 + t341 * t404;
t24 = t107 * t546 + t526 * t68 + t527 * t69 + (t189 * t539 - t190 * t541 + t237 * t652) * t562;
t288 = Icges(5,5) * t403 - Icges(5,6) * t402 + Icges(5,3) * t469;
t290 = Icges(5,4) * t403 - Icges(5,2) * t402 + Icges(5,6) * t469;
t292 = Icges(5,1) * t403 - Icges(5,4) * t402 + Icges(5,5) * t469;
t381 = Icges(5,5) * t479 + Icges(5,6) * t591 - Icges(5,3) * t573;
t384 = Icges(5,4) * t479 + Icges(5,2) * t591 - Icges(5,6) * t573;
t387 = Icges(5,1) * t479 + Icges(5,4) * t591 - Icges(5,5) * t573;
t144 = -t288 * t574 + t290 * t590 + t292 * t481 + t381 * t471 - t384 * t404 + t387 * t405;
t289 = Icges(5,5) * t405 - Icges(5,6) * t404 + Icges(5,3) * t471;
t291 = Icges(5,4) * t405 - Icges(5,2) * t404 + Icges(5,6) * t471;
t293 = Icges(5,1) * t405 - Icges(5,4) * t404 + Icges(5,5) * t471;
t382 = Icges(5,5) * t481 + Icges(5,6) * t590 - Icges(5,3) * t574;
t385 = Icges(5,4) * t481 + Icges(5,2) * t590 - Icges(5,6) * t574;
t388 = Icges(5,1) * t481 + Icges(5,4) * t590 - Icges(5,5) * t574;
t145 = -t289 * t574 + t291 * t590 + t293 * t481 + t382 * t471 - t385 * t404 + t388 * t405;
t353 = Icges(5,5) * t459 - Icges(5,6) * t458 + Icges(5,3) * t488;
t354 = Icges(5,4) * t459 - Icges(5,2) * t458 + Icges(5,6) * t488;
t355 = Icges(5,1) * t459 - Icges(5,4) * t458 + Icges(5,5) * t488;
t442 = Icges(5,5) * t497 + Icges(5,6) * t589 + Icges(5,3) * t524;
t443 = Icges(5,4) * t497 + Icges(5,2) * t589 + Icges(5,6) * t524;
t444 = Icges(5,1) * t497 + Icges(5,4) * t589 + Icges(5,5) * t524;
t168 = -t353 * t574 + t354 * t590 + t355 * t481 - t404 * t443 + t405 * t444 + t442 * t471;
t247 = -t381 * t574 + t384 * t590 + t387 * t481;
t248 = -t382 * t574 + t385 * t590 + t388 * t481;
t273 = -t442 * t574 + t443 * t590 + t444 * t481;
t49 = t144 * t526 + t145 * t527 + t168 * t546 + (t247 * t539 - t248 * t541 + t273 * t652) * t562;
t618 = t20 / 0.2e1 + t24 / 0.2e1 + t49 / 0.2e1;
t183 = -t332 * t591 + t334 * t427 + t336 * t428;
t184 = -t333 * t591 + t335 * t427 + t337 * t428;
t234 = -t372 * t591 + t373 * t427 + t374 * t428;
t62 = -t214 * t591 + t216 * t427 + t218 * t428 + t302 * t334 + t303 * t336 + t332 * t402;
t63 = -t215 * t591 + t217 * t427 + t219 * t428 + t302 * t335 + t303 * t337 + t333 * t402;
t98 = -t261 * t591 + t262 * t427 + t263 * t428 + t302 * t373 + t303 * t374 + t372 * t402;
t19 = t526 * t62 + t527 * t63 + t546 * t98 + (t183 * t539 - t184 * t541 + t234 * t652) * t562;
t106 = -t265 * t591 + t266 * t431 + t267 * t432 + t307 * t383 + t308 * t386 + t380 * t402;
t187 = -t340 * t591 + t342 * t431 + t344 * t432;
t188 = -t341 * t591 + t343 * t431 + t345 * t432;
t236 = -t380 * t591 + t383 * t431 + t386 * t432;
t66 = -t224 * t591 + t226 * t431 + t228 * t432 + t307 * t342 + t308 * t344 + t340 * t402;
t67 = -t225 * t591 + t227 * t431 + t229 * t432 + t307 * t343 + t308 * t345 + t341 * t402;
t23 = t106 * t546 + t526 * t66 + t527 * t67 + (t187 * t539 - t188 * t541 + t236 * t652) * t562;
t142 = -t288 * t573 + t290 * t591 + t292 * t479 + t381 * t469 - t384 * t402 + t387 * t403;
t143 = -t289 * t573 + t291 * t591 + t293 * t479 + t382 * t469 - t385 * t402 + t388 * t403;
t167 = -t353 * t573 + t354 * t591 + t355 * t479 - t402 * t443 + t403 * t444 + t442 * t469;
t245 = -t381 * t573 + t384 * t591 + t387 * t479;
t246 = -t382 * t573 + t385 * t591 + t388 * t479;
t272 = -t442 * t573 + t443 * t591 + t444 * t479;
t48 = t142 * t526 + t143 * t527 + t167 * t546 + (t245 * t539 - t246 * t541 + t272 * t652) * t562;
t617 = t23 / 0.2e1 + t19 / 0.2e1 + t48 / 0.2e1;
t135 = -t261 * t589 + t262 * t473 + t263 * t474 + t360 * t373 + t361 * t374 + t372 * t458;
t73 = -t214 * t589 + t216 * t473 + t218 * t474 + t332 * t458 + t334 * t360 + t336 * t361;
t74 = -t215 * t589 + t217 * t473 + t219 * t474 + t333 * t458 + t335 * t360 + t337 * t361;
t44 = t135 * t565 + (t561 * t74 - t564 * t73) * t563;
t140 = -t265 * t589 + t266 * t476 + t267 * t477 + t366 * t383 + t367 * t386 + t380 * t458;
t75 = -t224 * t589 + t226 * t476 + t228 * t477 + t340 * t458 + t342 * t366 + t344 * t367;
t76 = -t225 * t589 + t227 * t476 + t229 * t477 + t341 * t458 + t343 * t366 + t345 * t367;
t45 = t140 * t565 + (t561 * t76 - t564 * t75) * t563;
t152 = t288 * t524 + t290 * t589 + t292 * t497 + t381 * t488 - t384 * t458 + t387 * t459;
t153 = t289 * t524 + t291 * t589 + t293 * t497 + t382 * t488 - t385 * t458 + t388 * t459;
t179 = t353 * t524 + t354 * t589 + t355 * t497 + t442 * t488 - t443 * t458 + t444 * t459;
t57 = t179 * t565 + (-t152 * t564 + t153 * t561) * t563;
t616 = t44 / 0.2e1 + t57 / 0.2e1 + t45 / 0.2e1;
t13 = t183 * t469 + t184 * t471 + t234 * t488 + t524 * t98 - t573 * t62 - t574 * t63;
t21 = t106 * t524 + t187 * t469 + t188 * t471 + t236 * t488 - t573 * t66 - t574 * t67;
t46 = -t142 * t573 - t143 * t574 + t167 * t524 + t245 * t469 + t246 * t471 + t272 * t488;
t615 = -t46 / 0.2e1 - t21 / 0.2e1 - t13 / 0.2e1;
t14 = t185 * t469 + t186 * t471 + t235 * t488 + t524 * t99 - t573 * t64 - t574 * t65;
t22 = t107 * t524 + t189 * t469 + t190 * t471 + t237 * t488 - t573 * t68 - t574 * t69;
t47 = -t144 * t573 - t145 * t574 + t168 * t524 + t247 * t469 + t248 * t471 + t273 * t488;
t614 = t47 / 0.2e1 + t22 / 0.2e1 + t14 / 0.2e1;
t199 = -t332 * t589 + t334 * t473 + t336 * t474;
t200 = -t333 * t589 + t335 * t473 + t337 * t474;
t243 = -t372 * t589 + t373 * t473 + t374 * t474;
t31 = t135 * t524 + t199 * t469 + t200 * t471 + t243 * t488 - t573 * t73 - t574 * t74;
t201 = -t340 * t589 + t342 * t476 + t344 * t477;
t202 = -t341 * t589 + t343 * t476 + t345 * t477;
t249 = -t380 * t589 + t383 * t476 + t386 * t477;
t35 = t140 * t524 + t201 * t469 + t202 * t471 + t249 * t488 - t573 * t75 - t574 * t76;
t251 = t381 * t524 + t384 * t589 + t387 * t497;
t252 = t382 * t524 + t385 * t589 + t388 * t497;
t287 = t442 * t524 + t443 * t589 + t444 * t497;
t50 = -t152 * t573 - t153 * t574 + t179 * t524 + t251 * t469 + t252 * t471 + t287 * t488;
t613 = t50 / 0.2e1 + t35 / 0.2e1 + t31 / 0.2e1;
t34 = t135 * t546 + t526 * t73 + t527 * t74 + (t199 * t539 - t200 * t541 + t243 * t652) * t562;
t36 = t140 * t546 + t526 * t75 + t527 * t76 + (t201 * t539 - t202 * t541 + t249 * t652) * t562;
t51 = t152 * t526 + t153 * t527 + t179 * t546 + (t251 * t539 - t252 * t541 + t287 * t652) * t562;
t612 = t51 / 0.2e1 + t36 / 0.2e1 + t34 / 0.2e1;
t39 = t565 * t98 + (t561 * t63 - t564 * t62) * t563;
t41 = t106 * t565 + (t561 * t67 - t564 * t66) * t563;
t54 = t167 * t565 + (-t142 * t564 + t143 * t561) * t563;
t611 = t54 / 0.2e1 + t41 / 0.2e1 + t39 / 0.2e1;
t40 = t565 * t99 + (t561 * t65 - t564 * t64) * t563;
t42 = t107 * t565 + (t561 * t69 - t564 * t68) * t563;
t55 = t168 * t565 + (-t144 * t564 + t145 * t561) * t563;
t610 = t55 / 0.2e1 + t42 / 0.2e1 + t40 / 0.2e1;
t609 = (-t533 + t688) * t563;
t608 = (-t528 + t678) * t563;
t110 = t234 * t565 + (-t183 * t564 + t184 * t561) * t563;
t114 = t236 * t565 + (-t187 * t564 + t188 * t561) * t563;
t603 = t272 * t732 + (-t245 * t564 + t246 * t561) * t763 + t114 / 0.2e1 + t110 / 0.2e1;
t111 = t235 * t565 + (-t185 * t564 + t186 * t561) * t563;
t115 = t237 * t565 + (-t189 * t564 + t190 * t561) * t563;
t602 = t273 * t732 + (-t247 * t564 + t248 * t561) * t763 + t115 / 0.2e1 + t111 / 0.2e1;
t133 = t243 * t565 + (-t199 * t564 + t200 * t561) * t563;
t139 = t249 * t565 + (-t201 * t564 + t202 * t561) * t563;
t601 = t287 * t732 + (-t251 * t564 + t252 * t561) * t763 + t139 / 0.2e1 + t133 / 0.2e1;
t10 = t185 * t402 + t186 * t404 + t235 * t458 - t589 * t99 - t590 * t65 - t591 * t64;
t122 = -t199 * t591 - t200 * t590 - t243 * t589;
t29 = -t135 * t589 + t199 * t402 + t200 * t404 + t243 * t458 - t590 * t74 - t591 * t73;
t9 = t183 * t402 + t184 * t404 + t234 * t458 - t589 * t98 - t590 * t63 - t591 * t62;
t96 = -t183 * t591 - t184 * t590 - t234 * t589;
t97 = -t185 * t591 - t186 * t590 - t235 * t589;
t600 = -t10 * t590 + t458 * t122 - t29 * t589 + t402 * t96 + t404 * t97 - t591 * t9;
t599 = (-t533 + t664) * t563;
t598 = (-t528 + t658) * t563;
t596 = t546 * t326 + t425 * t620 + t468 * t713 + t657;
t321 = t325 * t712;
t322 = t326 * t708;
t594 = t321 + t322 + t624;
t593 = t424 * t712 + t425 * t708 + t623;
t588 = 0.2e1 * t134 * t753;
t587 = (-t533 + t631) * t563;
t586 = (-t528 + t627) * t563;
t585 = t133 * t750 + t29 * t732 + t39 * t747 + t40 * t746 + t44 * t742 + t10 * t712 / 0.2e1 - t9 * t708 / 0.2e1 + t110 * t752 + t111 * t751;
t102 = -t183 * t573 - t184 * t574 + t234 * t524;
t103 = -t185 * t573 - t186 * t574 + t235 * t524;
t128 = -t199 * t573 - t200 * t574 + t243 * t524;
t579 = t10 * t743 + t102 * t752 + t103 * t751 + t122 * t745 + t128 * t750 + t13 * t747 + t14 * t746 + t29 * t741 + t31 * t742 + t9 * t744 + t97 * t748 + t96 * t749;
t104 = t183 * t526 + t184 * t527 + t234 * t546;
t105 = t185 * t526 + t186 * t527 + t235 * t546;
t131 = t199 * t526 + t200 * t527 + t243 * t546;
t578 = t10 * t739 + t104 * t752 + t105 * t751 + t19 * t747 + t20 * t746 + t29 * t738 + t34 * t742 + t9 * t740 + t562 * t122 * t619 + t131 * t750 + t96 * t714 / 0.2e1 - t97 * t713 / 0.2e1;
t577 = m(5) * t294 + m(7) * t702 + t728;
t399 = rSges(4,1) * t470 - rSges(4,2) * t469 + rSges(4,3) * t714;
t575 = m(4) * t399 + t577;
t545 = (rSges(3,1) * t571 - rSges(3,2) * t569) * t672;
t544 = (Icges(3,1) * t571 - t721) * t672;
t543 = (-Icges(3,2) * t569 + t720) * t672;
t542 = (Icges(3,5) * t571 - Icges(3,6) * t569) * t672;
t536 = rSges(3,3) * t565 + (rSges(3,1) * t569 + rSges(3,2) * t571) * t563;
t535 = Icges(3,5) * t565 + (Icges(3,1) * t569 + t720) * t563;
t534 = Icges(3,6) * t565 + (Icges(3,2) * t571 + t721) * t563;
t521 = rSges(3,1) * t540 + rSges(3,2) * t541;
t520 = rSges(3,1) * t538 - rSges(3,2) * t539;
t519 = Icges(3,1) * t540 + Icges(3,4) * t541;
t518 = Icges(3,1) * t538 - Icges(3,4) * t539;
t517 = Icges(3,4) * t540 + Icges(3,2) * t541;
t516 = Icges(3,4) * t538 - Icges(3,2) * t539;
t515 = Icges(3,5) * t540 + Icges(3,6) * t541;
t514 = Icges(3,5) * t538 - Icges(3,6) * t539;
t513 = -rSges(3,1) * t592 + rSges(3,2) * t549 + rSges(3,3) * t712;
t512 = rSges(3,1) * t548 + rSges(3,2) * t547 - rSges(3,3) * t708;
t509 = -Icges(3,1) * t592 + Icges(3,4) * t549 + Icges(3,5) * t712;
t508 = Icges(3,1) * t548 + Icges(3,4) * t547 - Icges(3,5) * t708;
t507 = -Icges(3,4) * t592 + Icges(3,2) * t549 + Icges(3,6) * t712;
t506 = Icges(3,4) * t548 + Icges(3,2) * t547 - Icges(3,6) * t708;
t485 = Icges(4,1) * t525 - Icges(4,4) * t524 + Icges(4,5) * t546;
t484 = Icges(4,4) * t525 - Icges(4,2) * t524 + Icges(4,6) * t546;
t483 = Icges(4,5) * t525 - Icges(4,6) * t524 + Icges(4,3) * t546;
t456 = Icges(4,1) * t489 - Icges(4,4) * t488 + Icges(4,5) * t620;
t455 = Icges(4,4) * t489 - Icges(4,2) * t488 + Icges(4,6) * t620;
t454 = Icges(4,5) * t489 - Icges(4,6) * t488 + Icges(4,3) * t620;
t446 = rSges(4,1) * t495 + rSges(4,2) * t574 + rSges(4,3) * t527;
t445 = rSges(4,1) * t493 + rSges(4,2) * t573 + rSges(4,3) * t526;
t441 = Icges(4,1) * t495 + Icges(4,4) * t574 + Icges(4,5) * t527;
t440 = Icges(4,1) * t493 + Icges(4,4) * t573 + Icges(4,5) * t526;
t439 = Icges(4,4) * t495 + Icges(4,2) * t574 + Icges(4,6) * t527;
t438 = Icges(4,4) * t493 + Icges(4,2) * t573 + Icges(4,6) * t526;
t437 = Icges(4,5) * t495 + Icges(4,6) * t574 + Icges(4,3) * t527;
t436 = Icges(4,5) * t493 + Icges(4,6) * t573 + Icges(4,3) * t526;
t426 = t573 * t468;
t412 = t524 * t425;
t398 = Icges(4,1) * t472 - Icges(4,4) * t471 - Icges(4,5) * t713;
t397 = Icges(4,1) * t470 - Icges(4,4) * t469 + Icges(4,5) * t714;
t396 = Icges(4,4) * t472 - Icges(4,2) * t471 - Icges(4,6) * t713;
t395 = Icges(4,4) * t470 - Icges(4,2) * t469 + Icges(4,6) * t714;
t394 = Icges(4,5) * t472 - Icges(4,6) * t471 - Icges(4,3) * t713;
t393 = Icges(4,5) * t470 - Icges(4,6) * t469 + Icges(4,3) * t714;
t392 = t574 * t424;
t369 = t446 * t546 - t486 * t527;
t368 = -t445 * t546 + t486 * t526;
t358 = (-t445 - t503) * t565 + t564 * t639;
t357 = t446 * t565 + t561 * t639 + t498;
t352 = t483 * t546 - t484 * t524 + t485 * t525;
t351 = t591 * t375;
t350 = t445 * t527 - t446 * t526;
t349 = t483 * t527 + t484 * t574 + t485 * t495;
t348 = t483 * t526 + t484 * t573 + t485 * t493;
t331 = (t445 * t561 + t446 * t564) * t563 + t675;
t328 = (-t399 - t510) * t565 + t564 * t640;
t327 = t400 * t565 + t561 * t640 + t505;
t323 = t589 * t339;
t318 = t390 * t524 + t447 * t574;
t317 = -t389 * t524 - t447 * t573;
t306 = t590 * t338;
t301 = t437 * t546 - t439 * t524 + t441 * t525;
t300 = t436 * t546 - t438 * t524 + t440 * t525;
t286 = t437 * t527 + t439 * t574 + t441 * t495;
t285 = t436 * t527 + t438 * t574 + t440 * t495;
t284 = t437 * t526 + t439 * t573 + t441 * t493;
t283 = t436 * t526 + t438 * t573 + t440 * t493;
t282 = (t399 * t561 + t400 * t564) * t563 + t673;
t281 = -t389 * t574 + t390 * t573;
t277 = t390 * t546 + t527 * t678 + t460;
t276 = t447 * t526 + t546 * t683 + t475;
t275 = (-t503 + t683) * t565 + t564 * t608;
t274 = t390 * t565 + t561 * t608 + t676;
t271 = t400 * t546 - t457 * t527 + (t446 * t652 + t486 * t541) * t562;
t270 = -t399 * t546 + t457 * t526 + (-t445 * t652 + t486 * t539) * t562;
t260 = -t347 * t589 + t391 * t590;
t259 = t346 * t589 - t391 * t591;
t258 = t375 * t590 - t323;
t257 = t338 * t589 - t351;
t255 = t389 * t527 + t448 + (-t390 - t467) * t526;
t254 = (t389 * t561 + t390 * t564) * t563 + t623;
t253 = t454 * t546 - t455 * t524 + t456 * t525 + t483 * t620 - t484 * t488 + t485 * t489;
t250 = t399 * t527 - t400 * t526 + (-t445 * t541 - t446 * t539) * t562;
t244 = -t346 * t590 + t347 * t591;
t242 = t339 * t591 - t306;
t241 = t454 * t527 + t455 * t574 + t456 * t495 - t471 * t484 + t472 * t485 - t483 * t713;
t240 = t454 * t526 + t455 * t573 + t456 * t493 - t469 * t484 + t470 * t485 + t483 * t714;
t239 = t347 * t524 - t574 * t682 + t412;
t238 = -t391 * t573 + t524 * t690 - t426;
t223 = (-t503 + t660) * t565 + t564 * t598;
t222 = t347 * t565 + t561 * t598 + t656;
t213 = t347 * t546 + t527 * t658 + t679;
t212 = t391 * t526 + t546 * t660 + t677;
t210 = (-t510 + t695) * t565 + t564 * t609;
t209 = t295 * t565 + t561 * t609 + t681;
t205 = t394 * t546 - t396 * t524 + t398 * t525 + t437 * t620 - t439 * t488 + t441 * t489;
t204 = t393 * t546 - t395 * t524 + t397 * t525 + t436 * t620 - t438 * t488 + t440 * t489;
t203 = -t346 * t574 - t573 * t689 - t392;
t198 = t394 * t527 + t396 * t574 + t398 * t495 - t437 * t713 - t439 * t471 + t441 * t472;
t197 = t393 * t527 + t395 * t574 + t397 * t495 - t436 * t713 - t438 * t471 + t440 * t472;
t196 = t394 * t526 + t396 * t573 + t398 * t493 + t437 * t714 - t439 * t469 + t441 * t470;
t195 = t393 * t526 + t395 * t573 + t397 * t493 + t436 * t714 - t438 * t469 + t440 * t470;
t194 = t295 * t524 + t356 * t574 + t390 * t488 - t447 * t471;
t193 = -t294 * t524 - t356 * t573 - t389 * t488 + t447 * t469;
t192 = (t346 * t561 + t347 * t564) * t563 + t593;
t191 = t346 * t527 + (-t467 + t689) * t526 + t680;
t182 = -t330 * t589 + t590 * t685 - t323;
t181 = -t371 * t591 + t589 * t692 - t351;
t180 = (t294 * t561 + t295 * t564) * t563 + t624;
t178 = t524 * t691 - t574 * t659 + t412;
t177 = t524 * t662 - t573 * t685 - t426;
t176 = -t294 * t574 + t295 * t573 + t389 * t471 - t390 * t469;
t175 = t295 * t546 + (t390 * t652 + t447 * t541) * t562 + t688 * t527 + t657;
t174 = t356 * t526 + t435 + t695 * t546 + (-t539 * t678 + t652 * t683) * t562;
t173 = (-t503 + t628) * t565 + t564 * t586;
t172 = t561 * t586 + t565 * t691 + t656;
t171 = t527 * t627 + t546 * t691 + t679;
t170 = t526 * t685 + t546 * t628 + t677;
t169 = -t329 * t590 + t591 * t691 - t306;
t165 = t251 * t526 + t252 * t527 + t287 * t546;
t164 = -t573 * t661 - t574 * t692 - t392;
t163 = (t561 * t692 + t564 * t691) * t563 + t593;
t162 = -t251 * t573 - t252 * t574 + t287 * t524;
t161 = t294 * t527 + (-t295 - t415) * t526 + (-t390 * t539 + t541 * t683) * t562 + t684;
t160 = t692 * t527 + (-t467 + t661) * t526 + t680;
t157 = t247 * t526 + t248 * t527 + t273 * t546;
t156 = t245 * t526 + t246 * t527 + t272 * t546;
t155 = -t247 * t573 - t248 * t574 + t273 * t524;
t154 = -t245 * t573 - t246 * t574 + t272 * t524;
t151 = -t231 * t589 + t268 * t590 + t347 * t458 - t391 * t404;
t150 = t230 * t589 - t268 * t591 - t346 * t458 + t391 * t402;
t149 = (-t510 + t666) * t565 + t564 * t599;
t148 = t231 * t565 + t561 * t599 + t663;
t147 = t264 * t590 - t375 * t404 + t703;
t146 = t220 * t589 - t338 * t458 + t698;
t141 = t253 * t565 + (-t204 * t564 + t205 * t561) * t563;
t138 = -t230 * t590 + t231 * t591 + t346 * t404 - t347 * t402;
t137 = (t230 * t561 + t231 * t564) * t563 + t594;
t136 = t201 * t526 + t202 * t527 + t249 * t546;
t132 = -t201 * t573 - t202 * t574 + t249 * t524;
t130 = t241 * t565 + (-t197 * t564 + t198 * t561) * t563;
t129 = t240 * t565 + (-t195 * t564 + t196 * t561) * t563;
t127 = -t201 * t591 - t202 * t590 - t249 * t589;
t126 = t231 * t524 + t347 * t488 + t471 * t682 - t574 * t696 + t693;
t125 = -t268 * t573 + t391 * t469 + t488 * t690 + t524 * t700 + t687;
t117 = t231 * t546 + (t347 * t652 + t391 * t541) * t562 + t664 * t527 + t596;
t116 = t268 * t526 + t666 * t546 + (-t539 * t658 + t652 * t660) * t562 + t686;
t113 = t189 * t526 + t190 * t527 + t237 * t546;
t112 = t187 * t526 + t188 * t527 + t236 * t546;
t109 = -t189 * t573 - t190 * t574 + t237 * t524;
t108 = -t187 * t573 - t188 * t574 + t236 * t524;
t101 = -t189 * t591 - t190 * t590 - t237 * t589;
t100 = -t187 * t591 - t188 * t590 - t236 * t589;
t83 = (-t510 + t632) * t565 + t564 * t587;
t82 = t561 * t587 + t565 * t701 + t663;
t81 = t204 * t526 + t205 * t527 + t253 * t546 + (t300 * t539 - t301 * t541 + t352 * t652) * t562;
t80 = -t230 * t574 + t346 * t471 + t469 * t689 - t573 * t699 + t694;
t79 = t230 * t527 + (-t415 + t699) * t526 + (-t347 * t539 + t541 * t660) * t562 + t629;
t78 = t197 * t526 + t198 * t527 + t241 * t546 + (t285 * t539 - t286 * t541 + t349 * t652) * t562;
t77 = t195 * t526 + t196 * t527 + t240 * t546 + (t283 * t539 - t284 * t541 + t348 * t652) * t562;
t72 = -t233 * t589 + t330 * t458 - t404 * t685 + t590 * t697 + t703;
t71 = -t269 * t591 + t371 * t402 - t458 * t692 + t589 * t702 + t698;
t70 = (t561 * t702 + t564 * t701) * t563 + t594;
t61 = t471 * t659 + t488 * t691 + t524 * t701 - t574 * t665 + t693;
t60 = t469 * t685 + t488 * t662 + t524 * t668 - t573 * t697 + t687;
t59 = t701 * t546 + (t541 * t685 + t652 * t691) * t562 + t631 * t527 + t596;
t58 = t697 * t526 + t632 * t546 + (-t539 * t627 + t628 * t652) * t562 + t686;
t56 = -t232 * t590 + t404 * t329 - t402 * t691 + t591 * t701 + t704;
t53 = t469 * t661 + t471 * t692 - t573 * t667 - t574 * t702 + t694;
t52 = t702 * t527 + (-t415 + t667) * t526 + (-t539 * t691 + t541 * t628) * t562 + t629;
t32 = -t140 * t589 + t201 * t402 + t202 * t404 + t249 * t458 - t590 * t76 - t591 * t75;
t16 = -t107 * t589 + t189 * t402 + t190 * t404 + t237 * t458 - t590 * t69 - t591 * t68;
t15 = -t106 * t589 + t187 * t402 + t188 * t404 + t236 * t458 - t590 * t67 - t591 * t66;
t1 = [0; m(4) * t674 / 0.2e1 + t625 * t755 + (m(3) * t521 - t762) * t708 + (m(3) * t520 + t575) * t712 + t759 * (0.2e1 * t321 + 0.2e1 * t322 + t625); t40 * t712 - t39 * t708 - t41 * t708 + t42 * t712 + t55 * t712 - t54 * t708 + t130 * t712 - t129 * t708 + ((t507 * t541 + t509 * t540 + t515 * t712 + t517 * t549 - t519 * t592) * t712 - (t506 * t541 + t508 * t540 + t514 * t712 + t516 * t549 - t518 * t592) * t708 + (t534 * t541 + t535 * t540 + t542 * t712 + t543 * t549 - t544 * t592) * t565) * t712 - ((-t507 * t539 + t509 * t538 - t515 * t708 + t517 * t547 + t519 * t548) * t712 - (-t506 * t539 + t508 * t538 - t514 * t708 + t516 * t547 + t518 * t548) * t708 + (-t534 * t539 + t535 * t538 - t542 * t708 + t543 * t547 + t544 * t548) * t565) * t708 + (t163 * t70 + t172 * t82 + t173 * t83) * t641 + t565 * t44 + t565 * t45 + (t137 * t192 + t148 * t222 + t149 * t223) * t643 + t565 * t57 + (t180 * t254 + t209 * t274 + t210 * t275) * t645 + t565 * t141 + (t282 * t331 + t327 * t357 + t328 * t358) * t647 + t565 * (t542 * t565 ^ 2 + (((t517 * t571 + t519 * t569) * t561 - (t516 * t571 + t518 * t569) * t564 + ((-t507 * t569 + t509 * t571) * t561 - (-t506 * t569 + t508 * t571) * t564) * qJD(2)) * t563 + (-t514 * t564 + t515 * t561 + t543 * t571 + t544 * t569 + (-t534 * t569 + t535 * t571) * qJD(2)) * t565) * t563) + 0.2e1 * m(3) * ((-t512 * t565 - t536 * t708) * (-t520 * t565 - t545 * t708) + (t513 * t565 - t536 * t712) * (t521 * t565 - t545 * t712) + (t512 * t561 + t513 * t564) * t563 ^ 2 * (t520 * t561 + t521 * t564)); t626 * t755 + t575 * t527 + ((-m(4) * t445 - t757) * t541 - (m(4) * t446 - t758) * t539) * t562 + t762 * t526 + t759 * (t326 * t756 + t424 * t669 + 0.2e1 * t314 - 0.2e1 * t418 + t626); (t116 * t223 + t117 * t222 + t137 * t191 + t148 * t213 + t149 * t212 + t192 * t79) * m(6) + (t160 * t70 + t163 * t52 + t170 * t83 + t171 * t82 + t172 * t59 + t173 * t58) * m(7) + m(4) * (t250 * t331 + t270 * t358 + t271 * t357 + t282 * t350 + t327 * t369 + t328 * t368) + (t161 * t254 + t174 * t275 + t175 * t274 + t180 * t255 + t209 * t277 + t210 * t276) * m(5) + (t81 / 0.2e1 + t612) * t565 + (t141 / 0.2e1 + t616) * t546 + (t130 / 0.2e1 + t610) * t527 + (t129 / 0.2e1 + t611) * t526 + ((-t77 / 0.2e1 - t617) * t564 + (t78 / 0.2e1 + t618) * t561) * t563 + ((t349 * t733 + (t285 * t734 + t286 * t737) * t563 - t602) * t541 - (t348 * t733 + (t283 * t734 + t284 * t737) * t563 - t603) * t539 + (t352 * t732 + (t300 * t735 + t301 * t736) * t563 + t601) * t652) * t562; (t116 * t212 + t117 * t213 + t191 * t79) * t643 + (t160 * t52 + t170 * t58 + t171 * t59) * t641 + (t250 * t350 + t270 * t368 + t271 * t369) * t647 + (t161 * t255 + t174 * t276 + t175 * t277) * t645 + (t51 + t36 + t34 + t81) * t546 + (t20 + t24 + t78 + t49) * t527 + (t23 + t19 + t77 + t48) * t526 + ((-t285 * t526 - t286 * t527 - t349 * t546 - t105 - t113 - t157) * t541 - (-t283 * t526 - t284 * t527 - t348 * t546 - t104 - t112 - t156) * t539 + (t300 * t526 + t301 * t527 + t352 * t546 + t131 + t136 + t165) * t652) * t562; -t577 * t574 - t576 * t573 + t757 * t471 + t758 * t469 + 0.2e1 * t759 * (t326 * t573 - t469 * t425 + t694); (t163 * t53 + t164 * t70 + t172 * t61 + t173 * t60 + t177 * t83 + t178 * t82) * m(7) + (t176 * t254 + t180 * t281 + t193 * t275 + t194 * t274 + t209 * t318 + t210 * t317) * m(5) + (t125 * t223 + t126 * t222 + t137 * t203 + t148 * t239 + t149 * t238 + t192 * t80) * m(6) + t613 * t565 + t616 * t524 - t610 * t574 - t611 * t573 + t601 * t488 + t602 * t471 + t603 * t469 + (t561 * t614 + t564 * t615) * t563; (t160 * t53 + t164 * t52 + t170 * t60 + t171 * t61 + t177 * t58 + t178 * t59) * m(7) + (t161 * t281 + t174 * t317 + t175 * t318 + t176 * t255 + t193 * t276 + t194 * t277) * m(5) + (t116 * t238 + t117 * t239 + t125 * t212 + t126 * t213 + t191 * t80 + t203 * t79) * m(6) + t613 * t546 + t614 * t527 - t615 * t526 + t612 * t524 - t618 * t574 - t617 * t573 + (t165 / 0.2e1 + t136 / 0.2e1 + t131 / 0.2e1) * t488 + (t157 / 0.2e1 + t113 / 0.2e1 + t105 / 0.2e1) * t471 + (t156 / 0.2e1 + t112 / 0.2e1 + t104 / 0.2e1) * t469 + ((-t155 / 0.2e1 - t109 / 0.2e1 - t103 / 0.2e1) * t541 - (-t154 / 0.2e1 - t108 / 0.2e1 - t102 / 0.2e1) * t539 + (t128 / 0.2e1 + t132 / 0.2e1 + t162 / 0.2e1) * t652) * t562; (t164 * t53 + t177 * t60 + t178 * t61) * t641 + (t125 * t238 + t126 * t239 + t203 * t80) * t643 + (t176 * t281 + t193 * t317 + t194 * t318) * t645 + (t31 + t35 + t50) * t524 - (t14 + t22 + t47) * t574 - (t13 + t21 + t46) * t573 + (t128 + t132 + t162) * t488 + (t103 + t109 + t155) * t471 + (t102 + t108 + t154) * t469; t588 - (m(7) * t232 + t728) * t590 - (-m(7) * t233 - t727) * t591 + (m(7) * t329 + t726) * t404 + (-m(7) * t330 - t725) * t402; (t163 * t56 + t169 * t70 + t172 * t72 + t173 * t71 + t181 * t83 + t182 * t82) * m(7) + (t137 * t244 + t138 * t192 + t148 * t260 + t149 * t259 + t150 * t223 + t151 * t222) * m(6) + t585 + (t15 * t735 + t16 * t736) * t563 + t32 * t732 + t45 * t742 + t42 * t746 + t41 * t747 + t139 * t750 + t115 * t751 + t114 * t752; (t116 * t259 + t117 * t260 + t138 * t191 + t150 * t212 + t151 * t213 + t244 * t79) * m(6) + (t160 * t56 + t169 * t52 + t170 * t71 + t171 * t72 + t181 * t58 + t182 * t59) * m(7) + (-t541 * t101 / 0.2e1 + t539 * t100 / 0.2e1 + t127 * t619) * t562 + t32 * t738 + t16 * t739 + t15 * t740 + t36 * t742 + t24 * t746 + t23 * t747 + t136 * t750 + t578 + t113 * t751 + t112 * t752; (t164 * t56 + t169 * t53 + t177 * t71 + t178 * t72 + t181 * t60 + t182 * t61) * m(7) + (t125 * t259 + t126 * t260 + t138 * t203 + t150 * t238 + t151 * t239 + t244 * t80) * m(6) + t32 * t741 + t35 * t742 + t16 * t743 + t15 * t744 + t127 * t745 + t22 * t746 + t21 * t747 + t101 * t748 + t100 * t749 + t132 * t750 + t579 + t109 * t751 + t108 * t752; (t169 * t56 + t181 * t71 + t182 * t72) * t641 + t458 * t127 - t589 * t32 + (t138 * t244 + t150 * t259 + t151 * t260) * t643 + t402 * t100 - t591 * t15 + t404 * t101 - t590 * t16 + t600; t588; (t134 * t163 + t146 * t173 + t147 * t172 + t242 * t70 + t257 * t83 + t258 * t82) * m(7) + t585; (t134 * t160 + t146 * t170 + t147 * t171 + t242 * t52 + t257 * t58 + t258 * t59) * m(7) + t578; (t134 * t164 + t146 * t177 + t147 * t178 + t242 * t53 + t257 * t60 + t258 * t61) * m(7) + t579; (t134 * t169 + t146 * t181 + t147 * t182 + t242 * t56 + t257 * t71 + t258 * t72) * m(7) + t600; (t134 * t242 + t146 * t257 + t147 * t258) * t641 + t600;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;