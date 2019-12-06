% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5PRRRP6
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:53
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5PRRRP6_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP6_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP6_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRP6_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP6_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP6_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:52:26
% EndTime: 2019-12-05 16:52:42
% DurationCPUTime: 14.64s
% Computational Cost: add. (19713->486), mult. (40372->678), div. (0->0), fcn. (27351->8), ass. (0->356)
t587 = sin(qJ(4));
t588 = sin(qJ(3));
t590 = cos(qJ(4));
t591 = cos(qJ(3));
t538 = (t587 * t591 + t588 * t590) * qJD(2);
t535 = t538 ^ 2;
t581 = qJD(3) + qJD(4);
t669 = t581 ^ 2;
t476 = t669 + t535;
t632 = qJD(2) * t588;
t536 = -t590 * t591 * qJD(2) + t587 * t632;
t492 = t538 * t536;
t580 = qJDD(3) + qJDD(4);
t680 = t492 + t580;
t651 = t587 * t680;
t403 = t590 * t476 + t651;
t640 = t590 * t680;
t437 = t587 * t476 - t640;
t378 = t588 * t403 + t591 * t437;
t589 = sin(qJ(2));
t592 = cos(qJ(2));
t628 = qJD(2) * qJD(3);
t618 = t591 * t628;
t627 = t588 * qJDD(2);
t550 = t618 + t627;
t619 = t588 * t628;
t625 = t591 * qJDD(2);
t598 = t619 - t625;
t596 = -t536 * qJD(4) + t590 * t550 - t587 * t598;
t664 = t536 * t581;
t679 = t596 - t664;
t336 = t592 * t378 + t589 * t679;
t350 = t591 * t403 - t588 * t437;
t584 = sin(pkin(8));
t585 = cos(pkin(8));
t299 = t584 * t336 + t585 * t350;
t780 = qJ(1) * t299;
t301 = t585 * t336 - t584 * t350;
t779 = qJ(1) * t301;
t334 = t589 * t378 - t592 * t679;
t778 = pkin(5) * t334;
t777 = pkin(1) * t334 - pkin(2) * t679 + pkin(6) * t378;
t776 = -pkin(1) * t350 - pkin(5) * t336;
t613 = t587 * t550 + t590 * t598;
t426 = (qJD(4) + t581) * t538 + t613;
t370 = -t587 * t426 + t590 * t679;
t654 = t587 * t679;
t372 = t590 * t426 + t654;
t316 = t588 * t370 + t591 * t372;
t670 = t536 ^ 2;
t487 = t535 - t670;
t307 = t592 * t316 - t589 * t487;
t314 = -t591 * t370 + t588 * t372;
t775 = t584 * t307 - t585 * t314;
t774 = t585 * t307 + t584 * t314;
t522 = t670 - t669;
t443 = t587 * t522 + t640;
t447 = t590 * t522 - t651;
t387 = t588 * t443 - t591 * t447;
t427 = (qJD(4) - t581) * t538 + t613;
t342 = t592 * t387 + t589 * t427;
t383 = t591 * t443 + t588 * t447;
t773 = t584 * t342 + t585 * t383;
t772 = t585 * t342 - t584 * t383;
t770 = pkin(6) * t350;
t678 = -t664 - t596;
t707 = -t590 * t427 - t587 * t678;
t708 = -t587 * t427 + t590 * t678;
t722 = t588 * t707 + t591 * t708;
t459 = -t670 - t535;
t723 = -t588 * t708 + t591 * t707;
t737 = t589 * t459 + t592 * t723;
t752 = t584 * t722 + t585 * t737;
t769 = qJ(1) * t752;
t754 = t584 * t737 - t585 * t722;
t768 = qJ(1) * t754;
t761 = -pkin(2) * t350 - pkin(3) * t403;
t759 = t589 * t316 + t592 * t487;
t758 = t589 * t387 - t592 * t427;
t739 = -t592 * t459 + t589 * t723;
t757 = pkin(5) * t739;
t756 = -pkin(1) * t739 + pkin(2) * t459 - pkin(6) * t723;
t755 = -pkin(1) * t722 + pkin(5) * t737;
t523 = -t535 + t669;
t681 = -t492 + t580;
t650 = t587 * t681;
t709 = t590 * t523 + t650;
t474 = t590 * t681;
t710 = -t587 * t523 + t474;
t721 = -t588 * t710 - t591 * t709;
t720 = -t588 * t709 + t591 * t710;
t738 = -t589 * t678 + t592 * t720;
t753 = t584 * t738 + t585 * t721;
t751 = -t584 * t721 + t585 * t738;
t748 = pkin(6) * t722;
t747 = pkin(7) * t403;
t746 = pkin(7) * t437;
t290 = -pkin(2) * t722 - pkin(3) * t708;
t740 = t589 * t720 + t592 * t678;
t677 = -t669 - t670;
t686 = t590 * t677 - t650;
t689 = t587 * t677 + t474;
t701 = t588 * t686 + t591 * t689;
t736 = pkin(1) * t701;
t734 = pkin(6) * t701;
t702 = -t588 * t689 + t591 * t686;
t733 = pkin(6) * t702;
t732 = pkin(7) * t708;
t731 = t584 * t701;
t730 = t585 * t701;
t728 = t589 * t702;
t726 = t592 * t702;
t725 = -pkin(2) * t701 - pkin(3) * t689;
t724 = -pkin(3) * t459 + pkin(7) * t707;
t716 = pkin(7) * t686;
t715 = pkin(7) * t689;
t599 = (-t536 * t587 - t538 * t590) * t581;
t662 = t581 * t587;
t518 = t538 * t662;
t661 = t581 * t590;
t621 = t536 * t661;
t604 = t518 - t621;
t674 = -t588 * t604 - t591 * t599;
t673 = -t588 * t599 + t591 * t604;
t684 = t589 * t580 + t592 * t673;
t706 = t584 * t684 + t585 * t674;
t457 = -t538 * qJD(4) - t613;
t601 = -t587 * t457 + t621;
t605 = t590 * t457 + t536 * t662;
t671 = -t588 * t601 - t591 * t605;
t622 = t589 * t492;
t672 = -t588 * t605 + t591 * t601;
t685 = t592 * t672 - t622;
t705 = t584 * t685 + t585 * t671;
t704 = -t584 * t674 + t585 * t684;
t703 = -t584 * t671 + t585 * t685;
t700 = 2 * qJD(5);
t698 = qJ(5) * t679;
t597 = 0.2e1 * t619 - t625;
t504 = t597 * t591;
t688 = -t592 * t580 + t589 * t673;
t620 = t592 * t492;
t687 = t589 * t672 + t620;
t634 = g(3) - qJDD(1);
t683 = t584 * t634;
t682 = t585 * t634;
t557 = t584 * g(1) - t585 * g(2);
t542 = t585 * t557;
t558 = t585 * g(1) + t584 * g(2);
t498 = -t584 * t558 + t542;
t527 = -t592 * t558 - t589 * t634;
t667 = qJD(2) ^ 2;
t501 = -t667 * pkin(2) + qJDD(2) * pkin(6) + t527;
t468 = t588 * t501 + t591 * t557;
t567 = t588 * t667 * t591;
t559 = qJDD(3) + t567;
t415 = (-t550 + t618) * pkin(7) + t559 * pkin(3) - t468;
t471 = t591 * t501 - t588 * t557;
t561 = qJD(3) * pkin(3) - pkin(7) * t632;
t668 = t591 ^ 2;
t577 = t668 * t667;
t422 = -pkin(3) * t577 - pkin(7) * t598 - qJD(3) * t561 + t471;
t362 = t587 * t415 + t590 * t422;
t486 = t536 * pkin(4) - t538 * qJ(5);
t603 = t580 * qJ(5) - t536 * t486 + t581 * t700 + t362;
t420 = t538 * t661 + t587 * t596;
t421 = t590 * t596 - t518;
t361 = -t591 * t420 - t588 * t421;
t365 = -t588 * t420 + t591 * t421;
t606 = t592 * t365 + t622;
t676 = t585 * t361 + t584 * t606;
t675 = -t584 * t361 + t585 * t606;
t666 = pkin(4) * t590;
t665 = qJ(5) * t590;
t663 = t538 * t581;
t624 = t592 * qJDD(2);
t554 = -t589 * t667 + t624;
t659 = t584 * t554;
t658 = t584 * t557;
t656 = t585 * t554;
t612 = t589 * t558 - t592 * t634;
t602 = qJDD(2) * pkin(2) + t667 * pkin(6) + t612;
t449 = t598 * pkin(3) - pkin(7) * t577 + t561 * t632 - t602;
t652 = t587 * t449;
t358 = -t590 * t415 + t587 * t422;
t310 = -t590 * t358 + t587 * t362;
t648 = t588 * t310;
t647 = t588 * t602;
t646 = t588 * t559;
t560 = qJDD(3) - t567;
t645 = t588 * t560;
t641 = t590 * t449;
t639 = t591 * t310;
t638 = t591 * t602;
t637 = t591 * t559;
t636 = t591 * t560;
t633 = -t459 - t669;
t582 = t588 ^ 2;
t630 = t582 * t667;
t626 = t589 * qJDD(2);
t623 = t582 + t668;
t617 = -qJ(5) * t587 - pkin(3);
t402 = t588 * t468 + t591 * t471;
t552 = t623 * qJDD(2);
t555 = t577 + t630;
t496 = t589 * t552 + t592 * t555;
t497 = t592 * t552 - t589 * t555;
t616 = -pkin(1) * t496 - pkin(2) * t555 - pkin(6) * t552 + qJ(1) * t497 - t402;
t553 = t592 * t667 + t626;
t615 = pkin(1) * t554 + qJ(1) * t553 + t612;
t614 = -pkin(1) * t553 + qJ(1) * t554 - t527;
t311 = t587 * t358 + t590 * t362;
t463 = t592 * t527 - t589 * t612;
t499 = -t585 * t558 - t658;
t610 = t589 * t567;
t609 = t592 * t567;
t608 = t538 * t486 + qJDD(5) + t358;
t607 = t589 * t365 - t620;
t503 = pkin(5) * t553 - t592 * t557;
t502 = -pkin(5) * t554 - t589 * t557;
t401 = t591 * t468 - t588 * t471;
t462 = -t589 * t527 - t592 * t612;
t600 = -t580 * pkin(4) + t608;
t595 = -t457 * pkin(4) + t449 - t698;
t594 = t538 * t700 - t595;
t593 = qJD(3) ^ 2;
t566 = -t577 - t593;
t565 = t577 - t593;
t564 = -t593 - t630;
t563 = t593 - t630;
t556 = t577 - t630;
t549 = 0.2e1 * t618 + t627;
t548 = t623 * t628;
t541 = t585 * t553;
t540 = t584 * t553;
t521 = t589 * qJDD(3) + t592 * t548;
t520 = t591 * t550 - t582 * t628;
t519 = t588 * t598 - t668 * t628;
t513 = -t588 * t564 - t636;
t512 = -t588 * t563 + t637;
t511 = t591 * t566 - t646;
t510 = t591 * t565 - t645;
t509 = t591 * t564 - t645;
t508 = -t591 * t563 - t646;
t507 = t588 * t566 + t637;
t506 = -t588 * t565 - t636;
t505 = (-t550 - t618) * t588;
t494 = -t588 * t549 - t504;
t493 = -t591 * t549 + t588 * t597;
t480 = t592 * t520 - t610;
t479 = t592 * t519 + t610;
t478 = t592 * t512 + t588 * t626;
t477 = t592 * t510 + t589 * t625;
t473 = t592 * t513 + t589 * t549;
t472 = t592 * t511 + t589 * t597;
t470 = t589 * t513 - t592 * t549;
t469 = t589 * t511 - t592 * t597;
t458 = t592 * t494 - t589 * t556;
t451 = -pkin(6) * t509 - t638;
t450 = -pkin(6) * t507 - t647;
t440 = t585 * t463 - t658;
t439 = t584 * t463 + t542;
t428 = -t457 + t663;
t425 = -pkin(2) * t509 + t471;
t424 = -pkin(2) * t507 + t468;
t414 = t585 * t473 + t584 * t509;
t413 = t585 * t472 + t584 * t507;
t412 = t584 * t473 - t585 * t509;
t411 = t584 * t472 - t585 * t507;
t393 = -pkin(1) * t469 + pkin(2) * t597 - pkin(6) * t511 - t638;
t392 = -pkin(1) * t470 + pkin(2) * t549 - pkin(6) * t513 + t647;
t391 = -pkin(5) * t496 + t592 * t401;
t390 = t592 * t402 - t589 * t602;
t389 = t589 * t402 + t592 * t602;
t388 = t641 + t747;
t367 = t652 - t715;
t349 = -pkin(5) * t470 - t589 * t425 + t592 * t451;
t348 = -pkin(5) * t469 - t589 * t424 + t592 * t450;
t343 = -pkin(3) * t679 + t652 + t746;
t338 = -pkin(3) * t426 - t641 + t716;
t337 = t589 * t428 + t726;
t335 = -t592 * t428 + t728;
t333 = (pkin(4) * t581 - (2 * qJD(5))) * t538 + t595;
t332 = qJ(5) * t669 - t600;
t331 = -pkin(4) * t669 + t603;
t330 = t585 * t390 - t401 * t584;
t329 = t584 * t390 + t401 * t585;
t328 = t589 * t426 + t726;
t326 = -t592 * t426 + t728;
t324 = -pkin(1) * t389 - pkin(2) * t602 - pkin(6) * t402;
t323 = t633 * qJ(5) + t600;
t322 = t633 * pkin(4) + t603;
t321 = (-t428 - t663) * pkin(4) + t594;
t320 = -pkin(4) * t663 + t594 + t698;
t309 = -pkin(5) * t389 - (pkin(2) * t589 - pkin(6) * t592) * t401;
t302 = t585 * t337 + t731;
t300 = t584 * t337 - t730;
t298 = t362 - t761;
t297 = -pkin(3) * t449 + pkin(7) * t311;
t296 = t358 + t725;
t295 = t585 * t328 + t731;
t293 = t584 * t328 - t730;
t291 = -t587 * t321 - t428 * t665 - t715;
t289 = -pkin(4) * t654 + t590 * t320 - t747;
t288 = t590 * t331 - t587 * t332;
t287 = t587 * t331 + t590 * t332;
t286 = -t310 - t732;
t285 = -t588 * t343 + t591 * t388 + t770;
t284 = (-t677 - t669) * qJ(5) + (-t681 - t580) * pkin(4) + t608 + t725;
t283 = t590 * t321 + t428 * t617 + t716;
t282 = -t746 + t587 * t320 + (pkin(3) + t666) * t679;
t281 = t311 + t724;
t280 = -t588 * t338 + t591 * t367 - t734;
t279 = -qJ(5) * t680 + (-t476 + t669) * pkin(4) - t603 + t761;
t278 = -pkin(4) * t678 + qJ(5) * t427 + t290;
t277 = t591 * t311 - t648;
t276 = t588 * t311 + t639;
t271 = -t587 * t322 + t590 * t323 - t732;
t270 = t592 * t277 + t589 * t449;
t269 = t589 * t277 - t592 * t449;
t268 = t590 * t322 + t587 * t323 + t724;
t267 = -t591 * t343 - t588 * t388 - t777;
t266 = -pkin(1) * t326 + pkin(2) * t426 - t591 * t338 - t588 * t367 - t733;
t265 = -pkin(7) * t287 + (pkin(4) * t587 - t665) * t333;
t264 = -t588 * t287 + t591 * t288;
t263 = t591 * t287 + t588 * t288;
t262 = -pkin(2) * t276 - pkin(3) * t310;
t261 = t592 * t285 - t589 * t298 - t778;
t260 = -t588 * t283 + t591 * t291 - t734;
t259 = pkin(7) * t288 + (t617 - t666) * t333;
t258 = -t588 * t282 + t591 * t289 - t770;
t257 = t592 * t264 + t589 * t333;
t256 = t589 * t264 - t592 * t333;
t255 = -pkin(5) * t326 + t592 * t280 - t589 * t296;
t254 = -t588 * t281 + t591 * t286 - t748;
t253 = -pkin(6) * t276 - pkin(7) * t639 - t588 * t297;
t252 = t585 * t270 + t584 * t276;
t251 = t584 * t270 - t585 * t276;
t250 = -pkin(1) * t335 + pkin(2) * t428 - t591 * t283 - t588 * t291 - t733;
t249 = -t591 * t282 - t588 * t289 + t777;
t248 = -t591 * t281 - t588 * t286 + t756;
t247 = -t588 * t268 + t591 * t271 - t748;
t246 = -pkin(5) * t335 + t592 * t260 - t589 * t284;
t245 = -pkin(2) * t263 - pkin(3) * t287 - pkin(4) * t332 - qJ(5) * t331;
t244 = t592 * t258 - t589 * t279 + t778;
t243 = t585 * t257 + t584 * t263;
t242 = t584 * t257 - t585 * t263;
t241 = t592 * t254 - t589 * t290 - t757;
t240 = -pkin(1) * t269 + pkin(2) * t449 - pkin(6) * t277 + pkin(7) * t648 - t591 * t297;
t239 = -t591 * t268 - t588 * t271 + t756;
t238 = t592 * t247 - t589 * t278 - t757;
t237 = -pkin(6) * t263 - t588 * t259 + t591 * t265;
t236 = -pkin(5) * t269 + t592 * t253 - t589 * t262;
t235 = -pkin(1) * t256 + pkin(2) * t333 - pkin(6) * t264 - t591 * t259 - t588 * t265;
t234 = -pkin(5) * t256 + t592 * t237 - t589 * t245;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t499, 0, 0, 0, 0, 0, 0, -t541, -t656, 0, t440, 0, 0, 0, 0, 0, 0, t413, t414, t585 * t497, t330, 0, 0, 0, 0, 0, 0, t295, t301, t752, t252, 0, 0, 0, 0, 0, 0, t302, t752, -t301, t243; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t498, 0, 0, 0, 0, 0, 0, -t540, -t659, 0, t439, 0, 0, 0, 0, 0, 0, t411, t412, t584 * t497, t329, 0, 0, 0, 0, 0, 0, t293, t299, t754, t251, 0, 0, 0, 0, 0, 0, t300, t754, -t299, t242; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t634, 0, 0, 0, 0, 0, 0, t554, -t553, 0, -t462, 0, 0, 0, 0, 0, 0, t469, t470, t496, t389, 0, 0, 0, 0, 0, 0, t326, t334, t739, t269, 0, 0, 0, 0, 0, 0, t335, t739, -t334, t256; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t683, -t682, -t498, -qJ(1) * t498, 0, 0, t656, 0, -t541, t584 * qJDD(2), t585 * t502 + t584 * t615, t585 * t503 + t584 * t614, t585 * t462, -qJ(1) * t439 - (pkin(1) * t584 - pkin(5) * t585) * t462, t585 * t480 - t584 * t505, t585 * t458 - t584 * t493, t585 * t478 - t584 * t508, t585 * t479 - t584 * t504, t585 * t477 - t584 * t506, t585 * t521, -qJ(1) * t411 + t585 * t348 - t584 * t393, -qJ(1) * t412 + t585 * t349 - t584 * t392, t585 * t391 - t584 * t616, -qJ(1) * t329 + t585 * t309 - t584 * t324, t675, -t774, t751, t703, -t772, t704, -qJ(1) * t293 + t585 * t255 - t584 * t266, t585 * t261 - t584 * t267 - t780, t585 * t241 - t584 * t248 - t768, -qJ(1) * t251 + t585 * t236 - t584 * t240, t675, t751, t774, t704, t772, t703, -qJ(1) * t300 + t585 * t246 - t584 * t250, t585 * t238 - t584 * t239 - t768, t585 * t244 - t584 * t249 + t780, -qJ(1) * t242 + t585 * t234 - t584 * t235; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t682, -t683, t499, qJ(1) * t499, 0, 0, t659, 0, -t540, -t585 * qJDD(2), t584 * t502 - t585 * t615, t584 * t503 - t585 * t614, t584 * t462, qJ(1) * t440 - (-pkin(1) * t585 - pkin(5) * t584) * t462, t584 * t480 + t585 * t505, t584 * t458 + t585 * t493, t584 * t478 + t585 * t508, t584 * t479 + t585 * t504, t584 * t477 + t585 * t506, t584 * t521, qJ(1) * t413 + t584 * t348 + t585 * t393, qJ(1) * t414 + t584 * t349 + t585 * t392, t584 * t391 + t585 * t616, qJ(1) * t330 + t584 * t309 + t585 * t324, t676, -t775, t753, t705, -t773, t706, qJ(1) * t295 + t584 * t255 + t585 * t266, t584 * t261 + t585 * t267 + t779, t584 * t241 + t585 * t248 + t769, qJ(1) * t252 + t584 * t236 + t585 * t240, t676, t753, t775, t706, t773, t705, qJ(1) * t302 + t584 * t246 + t585 * t250, t584 * t238 + t585 * t239 + t769, t584 * t244 + t585 * t249 - t779, qJ(1) * t243 + t584 * t234 + t585 * t235; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t557, t558, 0, 0, 0, 0, t553, 0, t554, 0, -t503, t502, t463, pkin(1) * t557 + pkin(5) * t463, t589 * t520 + t609, t589 * t494 + t592 * t556, t589 * t512 - t588 * t624, t589 * t519 - t609, t589 * t510 - t591 * t624, -t592 * qJDD(3) + t589 * t548, -pkin(1) * t507 + pkin(5) * t472 + t592 * t424 + t589 * t450, -pkin(1) * t509 + pkin(5) * t473 + t592 * t425 + t589 * t451, pkin(5) * t497 + t589 * t401, pkin(5) * t390 - (-pkin(2) * t592 - pkin(6) * t589 - pkin(1)) * t401, t607, -t759, t740, t687, -t758, t688, pkin(5) * t328 + t589 * t280 + t592 * t296 - t736, t589 * t285 + t592 * t298 - t776, t589 * t254 + t592 * t290 + t755, -pkin(1) * t276 + pkin(5) * t270 + t589 * t253 + t592 * t262, t607, t740, t759, t688, t758, t687, pkin(5) * t337 + t589 * t260 + t592 * t284 - t736, t589 * t247 + t592 * t278 + t755, t589 * t258 + t592 * t279 + t776, -pkin(1) * t263 + pkin(5) * t257 + t589 * t237 + t592 * t245;];
tauB_reg = t1;
