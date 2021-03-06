% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRPPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d5,d6,theta1,theta3]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 21:53
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRPPRR2_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPPRR2_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPPRR2_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPPRR2_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPPRR2_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPPRR2_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 21:52:50
% EndTime: 2019-05-04 21:53:11
% DurationCPUTime: 20.27s
% Computational Cost: add. (57614->672), mult. (105039->1061), div. (0->0), fcn. (75295->12), ass. (0->474)
t583 = sin(pkin(6));
t586 = cos(pkin(6));
t582 = sin(pkin(10));
t585 = cos(pkin(10));
t554 = g(1) * t582 - t585 * g(2);
t672 = g(3) - qJDD(1);
t525 = t554 * t583 + t586 * t672;
t518 = -qJDD(3) + t525;
t581 = sin(pkin(11));
t584 = cos(pkin(11));
t597 = qJD(2) ^ 2;
t547 = qJDD(2) * t584 - t581 * t597;
t457 = qJ(3) * t547 + t518 * t581;
t592 = sin(qJ(2));
t595 = cos(qJ(2));
t548 = qJDD(2) * t581 + t584 * t597;
t652 = -qJ(3) * t548 + t584 * t518;
t710 = t595 * t457 + t592 * t652;
t493 = t547 * t595 - t548 * t592;
t720 = t493 * t586;
t721 = t493 * t583;
t333 = t710 + pkin(7) * (t583 * t721 + t586 * t720);
t495 = t547 * t592 + t548 * t595;
t418 = t495 * t585 + t582 * t720;
t750 = qJ(1) * t418 + t333 * t582;
t414 = t495 * t582 - t585 * t720;
t749 = -qJ(1) * t414 + t333 * t585;
t707 = -t592 * t457 + t595 * t652;
t718 = t495 * t586;
t719 = t495 * t583;
t334 = t707 - pkin(7) * (t583 * t719 + t586 * t718);
t416 = t493 * t585 - t582 * t718;
t748 = qJ(1) * t416 + t334 * t582;
t412 = t493 * t582 + t585 * t718;
t747 = -qJ(1) * t412 + t334 * t585;
t603 = -pkin(7) * t495 + t707;
t746 = -pkin(1) * t720 - t583 * t603;
t604 = pkin(7) * t493 + t710;
t745 = pkin(1) * t718 + t583 * t604;
t744 = pkin(1) * t721 - t586 * t603;
t743 = -pkin(1) * t719 + t586 * t604;
t555 = g(1) * t585 + g(2) * t582;
t725 = -t586 * t554 + t583 * t672;
t466 = -t555 * t592 + t595 * t725;
t454 = qJDD(2) * pkin(2) - t466;
t467 = -t595 * t555 - t592 * t725;
t455 = -t597 * pkin(2) + t467;
t399 = -t584 * t454 + t455 * t581;
t400 = t581 * t454 + t584 * t455;
t648 = t399 * t581 + t584 * t400;
t326 = t399 * t584 - t400 * t581;
t699 = t326 * t592;
t736 = t595 * t648 + t699;
t698 = t326 * t595;
t270 = -t592 * t648 + t698;
t590 = sin(qJ(6));
t593 = cos(qJ(6));
t594 = cos(qJ(5));
t668 = qJD(2) * t594;
t539 = -t593 * qJD(5) + t590 * t668;
t541 = qJD(5) * t590 + t593 * t668;
t506 = t541 * t539;
t666 = qJD(2) * qJD(5);
t654 = t594 * t666;
t591 = sin(qJ(5));
t663 = qJDD(2) * t591;
t544 = -t654 - t663;
t600 = qJDD(6) - t544;
t711 = -t506 + t600;
t729 = t590 * t711;
t727 = t593 * t711;
t665 = qJDD(2) * qJ(4);
t614 = -t597 * pkin(3) + t400 + t665;
t706 = 2 * qJD(4);
t661 = qJD(2) * t706;
t390 = t614 + t661;
t580 = qJDD(2) * pkin(3);
t391 = -t597 * qJ(4) + qJDD(4) + t399 - t580;
t314 = t390 * t581 - t391 * t584;
t649 = t584 * t390 + t391 * t581;
t724 = -t314 * t592 + t595 * t649;
t633 = t314 * t595 + t592 * t649;
t717 = t582 * t672;
t716 = t585 * t672;
t669 = qJD(2) * t591;
t565 = qJD(6) + t669;
t526 = t565 * t539;
t656 = t591 * t666;
t662 = qJDD(2) * t594;
t545 = -t656 + t662;
t657 = t539 * qJD(6) - t590 * qJDD(5) - t593 * t545;
t440 = t657 + t526;
t647 = -t593 * qJDD(5) + t590 * t545;
t436 = (qJD(6) - t565) * t541 + t647;
t535 = t539 ^ 2;
t536 = t541 ^ 2;
t564 = t565 ^ 2;
t705 = pkin(3) + pkin(8);
t704 = pkin(2) * t326;
t703 = pkin(5) * t591;
t702 = pkin(5) * t594;
t403 = t466 * t592 + t467 * t595;
t701 = pkin(7) * t403;
t643 = -pkin(9) * t594 + t703;
t542 = t643 * qJD(2);
t596 = qJD(5) ^ 2;
t598 = -qJDD(2) * pkin(8) + t391;
t650 = t518 * t591 + t594 * t598;
t343 = -qJDD(5) * pkin(5) - t596 * pkin(9) + t542 * t668 - t650;
t697 = t343 * t590;
t696 = t343 * t593;
t464 = t506 + t600;
t695 = t464 * t590;
t694 = t464 * t593;
t577 = t591 ^ 2;
t578 = t594 ^ 2;
t670 = t577 + t578;
t549 = t670 * qJDD(2);
t693 = t549 * t581;
t692 = t549 * t584;
t658 = t591 * t594 * t597;
t556 = qJDD(5) + t658;
t691 = t556 * t591;
t690 = t556 * t594;
t557 = qJDD(5) - t658;
t689 = t557 * t591;
t688 = t557 * t594;
t687 = t565 * t590;
t686 = t565 * t593;
t685 = t577 * t597;
t684 = t578 * t597;
t683 = t583 * t518;
t588 = t597 * pkin(8);
t384 = t390 - t588;
t680 = t591 * t384;
t677 = t592 * t525;
t676 = t594 * t384;
t673 = t595 * t525;
t671 = t594 * t518 - t591 * t598;
t344 = -pkin(5) * t596 + qJDD(5) * pkin(9) - t542 * t669 - t671;
t644 = pkin(9) * t591 + t702;
t349 = -t544 * pkin(5) - t545 * pkin(9) - t588 + (qJD(5) * t644 + t706) * qJD(2) + t614;
t284 = t593 * t344 + t590 * t349;
t664 = qJDD(2) * t583;
t660 = t591 * t506;
t659 = t594 * t506;
t655 = t585 * t664;
t283 = t344 * t590 - t593 * t349;
t241 = t283 * t590 + t593 * t284;
t501 = -t554 * t582 - t585 * t555;
t646 = t581 * t658;
t645 = t584 * t658;
t386 = -pkin(2) * t548 - t400;
t550 = qJDD(2) * t595 - t592 * t597;
t642 = -pkin(7) * t550 - t677;
t615 = qJDD(2) * t592 + t595 * t597;
t641 = -pkin(7) * t615 + t673;
t230 = t241 * t591 - t343 * t594;
t240 = -t283 * t593 + t284 * t590;
t202 = -t230 * t584 + t240 * t581;
t203 = t230 * t581 + t240 * t584;
t640 = t202 * t595 + t203 * t592;
t293 = -t591 * t671 + t594 * t650;
t273 = -t293 * t584 + t384 * t581;
t274 = t293 * t581 + t384 * t584;
t639 = t273 * t595 + t274 * t592;
t441 = -t526 + t657;
t372 = -t436 * t593 - t441 * t590;
t456 = t535 + t536;
t336 = t372 * t591 + t456 * t594;
t370 = -t436 * t590 + t441 * t593;
t285 = -t336 * t584 + t370 * t581;
t286 = t336 * t581 + t370 * t584;
t638 = t285 * t595 + t286 * t592;
t437 = (-qJD(6) - t565) * t541 - t647;
t371 = t437 * t593 + t440 * t590;
t502 = -t536 + t535;
t345 = -t371 * t591 - t502 * t594;
t369 = t437 * t590 - t440 * t593;
t289 = t345 * t584 + t369 * t581;
t290 = -t345 * t581 + t369 * t584;
t637 = t289 * t595 + t290 * t592;
t490 = -t564 - t535;
t405 = t490 * t593 - t729;
t351 = t405 * t591 + t437 * t594;
t404 = t490 * t590 + t727;
t302 = -t351 * t584 + t404 * t581;
t305 = t351 * t581 + t404 * t584;
t636 = t302 * t595 + t305 * t592;
t499 = -t536 - t564;
t411 = -t499 * t590 - t694;
t355 = t411 * t591 + t440 * t594;
t410 = t499 * t593 - t695;
t308 = -t355 * t584 + t410 * t581;
t309 = t355 * t581 + t410 * t584;
t635 = t308 * t595 + t309 * t592;
t524 = -t536 + t564;
t424 = -t524 * t590 + t727;
t359 = -t424 * t591 - t441 * t594;
t422 = t524 * t593 + t729;
t320 = t359 * t584 + t422 * t581;
t322 = -t359 * t581 + t422 * t584;
t632 = t320 * t595 + t322 * t592;
t523 = t535 - t564;
t425 = t523 * t593 - t695;
t360 = -t425 * t591 - t436 * t594;
t423 = t523 * t590 + t694;
t321 = t360 * t584 + t423 * t581;
t323 = -t360 * t581 + t423 * t584;
t631 = t321 * t595 + t323 * t592;
t476 = -qJD(6) * t541 - t647;
t432 = -t476 * t590 + t539 * t686;
t395 = -t432 * t591 - t659;
t431 = t476 * t593 + t539 * t687;
t338 = t395 * t584 + t431 * t581;
t340 = -t395 * t581 + t431 * t584;
t628 = t338 * t595 + t340 * t592;
t434 = -t541 * t687 - t593 * t657;
t396 = -t434 * t591 + t659;
t433 = t541 * t686 - t590 * t657;
t339 = t396 * t584 + t433 * t581;
t341 = -t396 * t581 + t433 * t584;
t627 = t339 * t595 + t341 * t592;
t294 = -t591 * t650 - t594 * t671;
t446 = (-t539 * t593 + t541 * t590) * t565;
t426 = -t446 * t591 + t594 * t600;
t445 = (-t539 * t590 - t541 * t593) * t565;
t367 = t426 * t584 + t445 * t581;
t368 = -t426 * t581 + t445 * t584;
t626 = t367 * t595 + t368 * t592;
t543 = 0.2e1 * t654 + t663;
t546 = -0.2e1 * t656 + t662;
t491 = t543 * t591 - t546 * t594;
t553 = (-t577 + t578) * t597;
t443 = t491 * t584 + t553 * t581;
t444 = -t491 * t581 + t553 * t584;
t625 = t443 * t595 + t444 * t592;
t561 = -t596 - t685;
t510 = t561 * t591 + t688;
t450 = -t510 * t584 + t543 * t581;
t452 = t510 * t581 + t543 * t584;
t624 = t450 * t595 + t452 * t592;
t563 = -t596 - t684;
t512 = t563 * t594 - t691;
t451 = -t512 * t584 + t546 * t581;
t453 = t512 * t581 + t546 * t584;
t623 = t451 * t595 + t453 * t592;
t402 = t466 * t595 - t467 * t592;
t560 = -t596 + t685;
t509 = -t560 * t591 - t690;
t468 = t509 * t584 - t581 * t663;
t470 = -t509 * t581 - t584 * t663;
t622 = t468 * t595 + t470 * t592;
t562 = t596 - t684;
t511 = -t562 * t594 - t689;
t469 = t511 * t584 + t581 * t662;
t471 = -t511 * t581 + t584 * t662;
t621 = t469 * t595 + t471 * t592;
t522 = -t545 * t591 - t578 * t666;
t472 = t522 * t584 + t646;
t474 = -t522 * t581 + t645;
t620 = t472 * t595 + t474 * t592;
t521 = -t544 * t594 - t577 * t666;
t473 = t521 * t584 - t646;
t475 = -t521 * t581 - t645;
t619 = t473 * t595 + t475 * t592;
t552 = t670 * t597;
t497 = -t552 * t581 + t692;
t498 = -t552 * t584 - t693;
t618 = t497 * t595 + t498 * t592;
t538 = t670 * t666;
t519 = qJDD(5) * t581 + t538 * t584;
t520 = qJDD(5) * t584 - t538 * t581;
t617 = t519 * t595 + t520 * t592;
t529 = t615 * t586;
t616 = t529 * t585 + t550 * t582;
t488 = t529 * t582 - t550 * t585;
t500 = t554 * t585 - t555 * t582;
t385 = pkin(2) * t547 - t399;
t231 = t241 * t594 + t343 * t591;
t185 = -t705 * t231 + (pkin(4) + t644) * t240;
t189 = pkin(4) * t230 - pkin(5) * t343 + pkin(9) * t241 - qJ(4) * t231;
t171 = -pkin(2) * t231 + qJ(3) * t203 + t185 * t584 + t189 * t581;
t172 = -qJ(3) * t202 - t185 * t581 + t189 * t584;
t187 = -t202 * t592 + t203 * t595;
t613 = pkin(7) * t187 + t171 * t595 + t172 * t592;
t235 = -pkin(9) * t370 - t240;
t337 = t372 * t594 - t456 * t591;
t206 = -t591 * t235 + (pkin(4) + t702) * t370 - t705 * t337;
t215 = pkin(4) * t336 + pkin(5) * t456 + pkin(9) * t372 - qJ(4) * t337 + t241;
t186 = -pkin(2) * t337 + qJ(3) * t286 + t206 * t584 + t215 * t581;
t188 = -qJ(3) * t285 - t206 * t581 + t215 * t584;
t244 = -t285 * t592 + t286 * t595;
t612 = pkin(7) * t244 + t186 * t595 + t188 * t592;
t272 = -pkin(5) * t404 + t283;
t299 = -pkin(9) * t404 + t697;
t352 = t405 * t594 - t437 * t591;
t223 = pkin(4) * t404 - t594 * t272 - t591 * t299 - t352 * t705;
t245 = pkin(4) * t351 + pkin(5) * t437 + pkin(9) * t405 - qJ(4) * t352 - t696;
t190 = -pkin(2) * t352 + qJ(3) * t305 + t223 * t584 + t245 * t581;
t196 = -qJ(3) * t302 - t223 * t581 + t245 * t584;
t251 = -t302 * t592 + t305 * t595;
t611 = pkin(7) * t251 + t190 * t595 + t196 * t592;
t275 = -pkin(5) * t410 + t284;
t301 = -pkin(9) * t410 + t696;
t356 = t411 * t594 - t440 * t591;
t224 = pkin(4) * t410 - t594 * t275 - t591 * t301 - t356 * t705;
t246 = pkin(4) * t355 + pkin(5) * t440 + pkin(9) * t411 - qJ(4) * t356 + t697;
t191 = -pkin(2) * t356 + qJ(3) * t309 + t224 * t584 + t246 * t581;
t197 = -qJ(3) * t308 - t224 * t581 + t246 * t584;
t254 = -t308 * t592 + t309 * t595;
t610 = pkin(7) * t254 + t191 * t595 + t197 * t592;
t237 = pkin(4) * t384 - t294 * t705;
t250 = pkin(4) * t293 - qJ(4) * t294;
t193 = -pkin(2) * t294 + qJ(3) * t274 + t237 * t584 + t250 * t581;
t199 = -qJ(3) * t273 - t237 * t581 + t250 * t584;
t232 = -t273 * t592 + t274 * t595;
t609 = pkin(7) * t232 + t193 * t595 + t199 * t592;
t514 = t561 * t594 - t689;
t328 = pkin(4) * t510 - qJ(4) * t514 + t650;
t331 = pkin(4) * t543 - t514 * t705 + t676;
t257 = -pkin(2) * t514 + qJ(3) * t452 + t328 * t581 + t331 * t584;
t267 = -qJ(3) * t450 + t328 * t584 - t331 * t581;
t393 = -t450 * t592 + t452 * t595;
t608 = pkin(7) * t393 + t257 * t595 + t267 * t592;
t517 = -t563 * t591 - t690;
t329 = pkin(4) * t512 - qJ(4) * t517 + t671;
t330 = pkin(4) * t546 - t517 * t705 - t680;
t258 = -pkin(2) * t517 + qJ(3) * t453 + t329 * t581 + t330 * t584;
t268 = -qJ(3) * t451 + t329 * t584 - t330 * t581;
t394 = -t451 * t592 + t453 * t595;
t607 = pkin(7) * t394 + t258 * t595 + t268 * t592;
t287 = qJ(3) * t649 + (pkin(3) * t584 + qJ(4) * t581 + pkin(2)) * t518;
t297 = -qJ(3) * t314 + (-pkin(3) * t581 + qJ(4) * t584) * t518;
t606 = pkin(7) * t724 + t287 * t595 + t297 * t592;
t288 = -pkin(4) * t552 - t294;
t279 = -pkin(4) * t693 + qJ(3) * t498 + t288 * t584;
t280 = -pkin(4) * t692 - qJ(3) * t497 - t288 * t581;
t430 = -t497 * t592 + t498 * t595;
t605 = pkin(7) * t430 + t279 * t595 + t280 * t592;
t312 = pkin(2) * t518 + qJ(3) * t648;
t599 = pkin(7) * t736 + qJ(3) * t699 + t312 * t595;
t568 = t586 * qJDD(2);
t559 = t582 * t664;
t530 = t550 * t586;
t528 = t550 * t583;
t527 = t615 * t583;
t516 = -t562 * t591 + t688;
t515 = (t545 - t656) * t594;
t513 = t560 * t594 - t691;
t508 = (-t544 + t654) * t591;
t505 = t586 * t518;
t492 = -t543 * t594 - t546 * t591;
t489 = -t530 * t582 - t585 * t615;
t487 = t530 * t585 - t582 * t615;
t442 = -t519 * t592 + t520 * t595;
t435 = t617 * t586;
t429 = -t673 + (t527 * t583 + t529 * t586) * pkin(7);
t428 = -t677 + (-t528 * t583 - t530 * t586) * pkin(7);
t427 = t446 * t594 + t591 * t600;
t421 = t618 * t586;
t420 = t618 * t583;
t409 = -t473 * t592 + t475 * t595;
t408 = -t472 * t592 + t474 * t595;
t407 = -t469 * t592 + t471 * t595;
t406 = -t468 * t592 + t470 * t595;
t401 = t403 * t586;
t398 = t434 * t594 + t660;
t397 = t432 * t594 - t660;
t389 = -pkin(1) * t528 + t583 * t466 + t586 * t641;
t388 = pkin(1) * t527 + t583 * t467 + t586 * t642;
t387 = -t443 * t592 + t444 * t595;
t380 = qJDD(4) - t385 - 0.2e1 * t580;
t379 = -t386 + t661 + 0.2e1 * t665;
t378 = -t583 * t508 + t586 * t619;
t377 = -t583 * t515 + t586 * t620;
t376 = -t583 * t516 + t586 * t621;
t375 = -t583 * t513 + t586 * t622;
t374 = -t402 * t586 + t583 * t525;
t373 = -t402 * t583 - t586 * t525;
t366 = -t583 * t517 + t586 * t623;
t365 = -t583 * t514 + t586 * t624;
t364 = t586 * t517 + t583 * t623;
t363 = t586 * t514 + t583 * t624;
t362 = t425 * t594 - t436 * t591;
t361 = t424 * t594 - t441 * t591;
t354 = -t421 * t582 + t430 * t585;
t353 = t421 * t585 + t430 * t582;
t350 = -t583 * t492 + t586 * t625;
t346 = t371 * t594 - t502 * t591;
t319 = -pkin(1) * t373 + t586 * t701;
t318 = -t374 * t582 + t403 * t585;
t317 = t374 * t585 + t403 * t582;
t311 = pkin(2) * t451 + qJ(4) * t546 - t512 * t705 + t676;
t310 = pkin(2) * t450 + qJ(4) * t543 - t510 * t705 + t680;
t307 = -t366 * t582 + t394 * t585;
t306 = -t365 * t582 + t393 * t585;
t304 = t366 * t585 + t394 * t582;
t303 = t365 * t585 + t393 * t582;
t300 = (-t373 * t583 - t374 * t586) * pkin(7);
t298 = -t367 * t592 + t368 * t595;
t296 = -t583 * t386 - t743;
t295 = -t583 * t385 - t744;
t292 = -t583 * t380 + t744;
t291 = -t583 * t379 + t743;
t281 = -t583 * t427 + t586 * t626;
t278 = -t339 * t592 + t341 * t595;
t277 = -t338 * t592 + t340 * t595;
t276 = pkin(2) * t497 - qJ(4) * t552 + t549 * t705 - t293;
t269 = t736 * t586;
t266 = pkin(2) * t314 - pkin(3) * t391 + qJ(4) * t390;
t265 = -t321 * t592 + t323 * t595;
t264 = -t320 * t592 + t322 * t595;
t263 = -t270 * t586 + t683;
t262 = -t270 * t583 - t505;
t259 = t724 * t586;
t256 = -t583 * t398 + t586 * t627;
t255 = -t583 * t397 + t586 * t628;
t253 = t586 * t633 + t683;
t252 = t583 * t633 - t505;
t249 = -t583 * t362 + t586 * t631;
t248 = -t583 * t361 + t586 * t632;
t247 = -t289 * t592 + t290 * t595;
t243 = -t583 * t356 + t586 * t635;
t242 = t586 * t356 + t583 * t635;
t239 = -t583 * t352 + t586 * t636;
t238 = t586 * t352 + t583 * t636;
t236 = -t583 * t346 + t586 * t637;
t234 = -t583 * t337 + t586 * t638;
t233 = t586 * t337 + t583 * t638;
t229 = -t263 * t582 + t585 * t736;
t228 = t263 * t585 + t582 * t736;
t227 = -t592 * t279 + t595 * t280 + (-t420 * t583 - t421 * t586) * pkin(7);
t226 = -t253 * t582 + t585 * t724;
t225 = t253 * t585 + t582 * t724;
t222 = pkin(2) * t273 + qJ(4) * t384 - t293 * t705;
t221 = -t243 * t582 + t254 * t585;
t220 = t243 * t585 + t254 * t582;
t219 = -t583 * t294 + t586 * t639;
t218 = t586 * t294 + t583 * t639;
t217 = -t239 * t582 + t251 * t585;
t216 = t239 * t585 + t251 * t582;
t214 = -t592 * t258 + t595 * t268 + (-t364 * t583 - t366 * t586) * pkin(7);
t213 = -t592 * t257 + t595 * t267 + (-t363 * t583 - t365 * t586) * pkin(7);
t212 = -pkin(1) * t420 - t583 * t276 + t586 * t605;
t211 = pkin(2) * t308 + qJ(4) * t410 - t591 * t275 + t594 * t301 - t355 * t705;
t210 = pkin(2) * t302 + qJ(4) * t404 - t591 * t272 + t594 * t299 - t351 * t705;
t209 = qJ(3) * t698 - t592 * t312 + (-t262 * t583 - t263 * t586) * pkin(7);
t208 = -pkin(1) * t364 - t583 * t311 + t586 * t607;
t207 = -pkin(1) * t363 - t583 * t310 + t586 * t608;
t205 = -t234 * t582 + t244 * t585;
t204 = t234 * t585 + t244 * t582;
t201 = -pkin(1) * t262 + t583 * t704 + t586 * t599;
t200 = -t592 * t287 + t595 * t297 + (-t252 * t583 - t253 * t586) * pkin(7);
t198 = pkin(2) * t285 + t594 * t235 + (qJ(4) + t703) * t370 - t705 * t336;
t195 = -t219 * t582 + t232 * t585;
t194 = t219 * t585 + t232 * t582;
t192 = -pkin(1) * t252 - t583 * t266 + t586 * t606;
t184 = -t583 * t231 + t586 * t640;
t183 = t586 * t231 + t583 * t640;
t182 = pkin(2) * t202 - t705 * t230 + (qJ(4) + t643) * t240;
t181 = -t592 * t191 + t595 * t197 + (-t242 * t583 - t243 * t586) * pkin(7);
t180 = -t592 * t190 + t595 * t196 + (-t238 * t583 - t239 * t586) * pkin(7);
t179 = -t592 * t193 + t595 * t199 + (-t218 * t583 - t219 * t586) * pkin(7);
t178 = -pkin(1) * t242 - t583 * t211 + t586 * t610;
t177 = -pkin(1) * t238 - t583 * t210 + t586 * t611;
t176 = -pkin(1) * t218 - t583 * t222 + t586 * t609;
t175 = -t184 * t582 + t187 * t585;
t174 = t184 * t585 + t187 * t582;
t173 = -t592 * t186 + t595 * t188 + (-t233 * t583 - t234 * t586) * pkin(7);
t170 = -pkin(1) * t233 - t583 * t198 + t586 * t612;
t169 = -t592 * t171 + t595 * t172 + (-t183 * t583 - t184 * t586) * pkin(7);
t168 = -pkin(1) * t183 - t583 * t182 + t586 * t613;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t501, 0, 0, 0, 0, 0, 0, t489, t488, 0, t318, 0, 0, 0, 0, 0, 0, -t418, -t416, 0, t229, 0, 0, 0, 0, 0, 0, 0, t418, t416, t226, 0, 0, 0, 0, 0, 0, t306, t307, t354, t195, 0, 0, 0, 0, 0, 0, t217, t221, t205, t175; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t500, 0, 0, 0, 0, 0, 0, t487, -t616, 0, t317, 0, 0, 0, 0, 0, 0, -t414, -t412, 0, t228, 0, 0, 0, 0, 0, 0, 0, t414, t412, t225, 0, 0, 0, 0, 0, 0, t303, t304, t353, t194, 0, 0, 0, 0, 0, 0, t216, t220, t204, t174; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t672, 0, 0, 0, 0, 0, 0, t528, -t527, 0, t373, 0, 0, 0, 0, 0, 0, t721, -t719, 0, t262, 0, 0, 0, 0, 0, 0, 0, -t721, t719, t252, 0, 0, 0, 0, 0, 0, t363, t364, t420, t218, 0, 0, 0, 0, 0, 0, t238, t242, t233, t183; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t717, -t716, -t500, -qJ(1) * t500, 0, 0, -t488, 0, t489, t559, -qJ(1) * t487 - t389 * t582 + t428 * t585, qJ(1) * t616 - t388 * t582 + t429 * t585, -t401 * t582 + t402 * t585, -qJ(1) * t317 + t300 * t585 - t319 * t582, 0, 0, t416, 0, -t418, t559, -t295 * t582 - t749, -t296 * t582 - t747, -t269 * t582 + t270 * t585, -qJ(1) * t228 - t201 * t582 + t209 * t585, t559, -t416, t418, 0, 0, 0, -t259 * t582 - t585 * t633, -t292 * t582 + t749, -t291 * t582 + t747, -qJ(1) * t225 - t192 * t582 + t200 * t585, -t377 * t582 + t408 * t585, -t350 * t582 + t387 * t585, -t376 * t582 + t407 * t585, -t378 * t582 + t409 * t585, -t375 * t582 + t406 * t585, -t435 * t582 + t442 * t585, -qJ(1) * t303 - t207 * t582 + t213 * t585, -qJ(1) * t304 - t208 * t582 + t214 * t585, -qJ(1) * t353 - t212 * t582 + t227 * t585, -qJ(1) * t194 - t176 * t582 + t179 * t585, -t256 * t582 + t278 * t585, -t236 * t582 + t247 * t585, -t248 * t582 + t264 * t585, -t255 * t582 + t277 * t585, -t249 * t582 + t265 * t585, -t281 * t582 + t298 * t585, -qJ(1) * t216 - t177 * t582 + t180 * t585, -qJ(1) * t220 - t178 * t582 + t181 * t585, -qJ(1) * t204 - t170 * t582 + t173 * t585, -qJ(1) * t174 - t168 * t582 + t169 * t585; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t716, -t717, t501, qJ(1) * t501, 0, 0, t616, 0, t487, -t655, qJ(1) * t489 + t389 * t585 + t428 * t582, qJ(1) * t488 + t388 * t585 + t429 * t582, t401 * t585 + t402 * t582, qJ(1) * t318 + t300 * t582 + t319 * t585, 0, 0, t412, 0, -t414, -t655, t295 * t585 - t750, t296 * t585 - t748, t269 * t585 + t270 * t582, qJ(1) * t229 + t201 * t585 + t209 * t582, -t655, -t412, t414, 0, 0, 0, t259 * t585 - t582 * t633, t292 * t585 + t750, t291 * t585 + t748, qJ(1) * t226 + t192 * t585 + t200 * t582, t377 * t585 + t408 * t582, t350 * t585 + t387 * t582, t376 * t585 + t407 * t582, t378 * t585 + t409 * t582, t375 * t585 + t406 * t582, t435 * t585 + t442 * t582, qJ(1) * t306 + t207 * t585 + t213 * t582, qJ(1) * t307 + t208 * t585 + t214 * t582, qJ(1) * t354 + t212 * t585 + t227 * t582, qJ(1) * t195 + t176 * t585 + t179 * t582, t256 * t585 + t278 * t582, t236 * t585 + t247 * t582, t248 * t585 + t264 * t582, t255 * t585 + t277 * t582, t249 * t585 + t265 * t582, t281 * t585 + t298 * t582, qJ(1) * t217 + t177 * t585 + t180 * t582, qJ(1) * t221 + t178 * t585 + t181 * t582, qJ(1) * t205 + t170 * t585 + t173 * t582, qJ(1) * t175 + t168 * t585 + t169 * t582; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t554, t555, 0, 0, 0, 0, t527, 0, t528, t568, pkin(1) * t530 - t586 * t466 + t583 * t641, -pkin(1) * t529 - t586 * t467 + t583 * t642, t403 * t583, pkin(1) * t374 + t583 * t701, 0, 0, t719, 0, t721, t568, t586 * t385 - t746, t586 * t386 - t745, t736 * t583, pkin(1) * t263 + t583 * t599 - t586 * t704, t568, -t719, -t721, 0, 0, 0, t724 * t583, t586 * t380 + t746, t586 * t379 + t745, pkin(1) * t253 + t586 * t266 + t583 * t606, t586 * t515 + t583 * t620, t586 * t492 + t583 * t625, t586 * t516 + t583 * t621, t586 * t508 + t583 * t619, t586 * t513 + t583 * t622, t617 * t583, pkin(1) * t365 + t586 * t310 + t583 * t608, pkin(1) * t366 + t586 * t311 + t583 * t607, pkin(1) * t421 + t586 * t276 + t583 * t605, pkin(1) * t219 + t586 * t222 + t583 * t609, t586 * t398 + t583 * t627, t586 * t346 + t583 * t637, t586 * t361 + t583 * t632, t586 * t397 + t583 * t628, t586 * t362 + t583 * t631, t586 * t427 + t583 * t626, pkin(1) * t239 + t586 * t210 + t583 * t611, pkin(1) * t243 + t586 * t211 + t583 * t610, pkin(1) * t234 + t586 * t198 + t583 * t612, pkin(1) * t184 + t586 * t182 + t583 * t613;];
tauB_reg  = t1;
