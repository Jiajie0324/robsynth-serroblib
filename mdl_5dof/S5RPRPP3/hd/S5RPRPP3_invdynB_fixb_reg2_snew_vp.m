% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RPRPP3
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,theta2]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:13
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RPRPP3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPP3_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPP3_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRPP3_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPP3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPRPP3_invdynB_fixb_reg2_snew_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:13:01
% EndTime: 2019-12-31 18:13:11
% DurationCPUTime: 10.84s
% Computational Cost: add. (12144->458), mult. (30322->590), div. (0->0), fcn. (20342->6), ass. (0->325)
t598 = cos(pkin(7));
t602 = cos(qJ(3));
t597 = sin(pkin(7));
t600 = sin(qJ(3));
t647 = t597 * t600;
t562 = (-t598 * t602 + t647) * qJD(1);
t551 = t562 * qJD(3);
t617 = t597 * t602 + t598 * t600;
t561 = t617 * qJDD(1);
t509 = t561 - t551;
t465 = t551 + t509;
t603 = cos(qJ(1));
t601 = sin(qJ(1));
t604 = qJD(3) ^ 2;
t564 = t617 * qJD(1);
t685 = t564 ^ 2;
t544 = t685 - t604;
t650 = t564 * t562;
t715 = qJDD(3) - t650;
t660 = t715 * t600;
t441 = t544 * t602 - t660;
t485 = t602 * t715;
t738 = t544 * t600 + t485;
t742 = t441 * t597 + t598 * t738;
t753 = t601 * t742;
t774 = t465 * t603 - t753;
t752 = t603 * t742;
t773 = t465 * t601 + t752;
t686 = t562 ^ 2;
t541 = t686 + t604;
t422 = t541 * t602 + t660;
t725 = -t541 * t600 + t485;
t363 = t422 * t597 - t598 * t725;
t747 = pkin(1) * t363 - pkin(2) * t725;
t772 = -qJ(4) * t541 - t747;
t748 = qJ(2) * t363;
t366 = t422 * t598 + t597 * t725;
t771 = qJ(2) * t366;
t770 = t366 * t601;
t769 = t366 * t603;
t540 = -t685 - t604;
t714 = qJDD(3) + t650;
t726 = t602 * t714;
t712 = t540 * t600 + t726;
t727 = t600 * t714;
t713 = -t540 * t602 + t727;
t391 = t597 * t713 - t598 * t712;
t768 = qJ(2) * t391;
t721 = t597 * t712 + t598 * t713;
t739 = qJ(2) * t721;
t767 = t391 * t601;
t766 = t391 * t603;
t538 = t686 - t604;
t434 = t538 * t600 + t726;
t443 = t538 * t602 - t727;
t758 = t434 * t597 - t443 * t598;
t765 = t601 * t758;
t764 = t603 * t758;
t763 = pkin(1) * t721 + pkin(2) * t713;
t641 = qJDD(1) * t598;
t560 = qJDD(1) * t647 - t602 * t641;
t762 = -t560 * t603 + t765;
t761 = t560 * t601 + t764;
t759 = pkin(6) * t422;
t740 = pkin(6) * t725;
t751 = t434 * t598 + t443 * t597;
t757 = t441 * t598 - t597 * t738;
t644 = t564 * qJD(3);
t506 = t560 + 0.2e1 * t644;
t744 = t506 * t601 - t769;
t755 = pkin(5) * t744;
t745 = -t603 * t506 - t770;
t754 = pkin(5) * t745;
t729 = pkin(6) * t712;
t728 = pkin(6) * t713;
t466 = -t551 + t509;
t732 = -t466 * t601 - t766;
t750 = pkin(5) * t732;
t733 = t603 * t466 - t767;
t749 = pkin(5) * t733;
t746 = -pkin(1) * t506 - t771;
t642 = qJD(4) * qJD(3);
t736 = -qJ(4) * t714 - 0.2e1 * t642 - t763;
t735 = -pkin(2) * t506 - t759;
t734 = pkin(1) * t466 - t768;
t634 = t603 * t650;
t621 = t600 * t509 + t602 * t644;
t631 = t600 * t644;
t705 = t602 * t509 - t631;
t711 = -t597 * t621 + t598 * t705;
t625 = t601 * t711 - t634;
t635 = t601 * t650;
t623 = t603 * t711 + t635;
t697 = qJ(4) * t466;
t511 = -t686 + t685;
t719 = t511 * t601;
t718 = t511 * t603;
t577 = g(1) * t603 + g(2) * t601;
t605 = qJD(1) ^ 2;
t704 = -pkin(1) * t605 + qJDD(1) * qJ(2) + 0.2e1 * qJD(1) * qJD(2) - t577;
t576 = g(1) * t601 - t603 * g(2);
t622 = -qJDD(2) + t576;
t591 = t597 ^ 2;
t592 = t598 ^ 2;
t646 = t591 + t592;
t682 = pkin(2) * t598;
t498 = (pkin(6) * t646 + qJ(2)) * t605 + (pkin(1) + t682) * qJDD(1) + t622;
t610 = -pkin(3) * t644 + 0.2e1 * qJD(4) * t564 + t498;
t609 = t610 + t697;
t397 = t597 * t705 + t598 * t621;
t694 = -t686 - t685;
t710 = pkin(1) * t694;
t709 = pkin(2) * t694;
t708 = qJ(4) * t694;
t707 = t601 * t694;
t706 = t603 * t694;
t585 = t601 * qJDD(3);
t632 = t602 * t551;
t619 = t631 - t632;
t614 = (-t562 * t600 - t564 * t602) * qJD(3);
t701 = t597 * t614;
t688 = t598 * t619 - t701;
t703 = t603 * t688 + t585;
t507 = t560 + t644;
t616 = t507 * t600 + t632;
t620 = -t602 * t507 + t551 * t600;
t687 = -t597 * t620 + t598 * t616;
t626 = t601 * t687 + t634;
t638 = qJDD(3) * t603;
t702 = t601 * t688 - t638;
t624 = t603 * t687 - t635;
t699 = t598 * t614;
t533 = pkin(4) * t564 - qJD(3) * qJ(5);
t684 = -2 * qJD(5);
t693 = -t507 * qJ(5) + t564 * t533 + t562 * t684;
t691 = t605 * t646;
t689 = t597 * t619 + t699;
t396 = t597 * t616 + t598 * t620;
t681 = pkin(3) * t507;
t680 = pkin(3) * t602;
t679 = g(3) * t598;
t678 = pkin(3) + qJ(5);
t676 = qJ(4) * t560;
t675 = qJDD(1) * pkin(1);
t473 = -t679 + (-pkin(6) * qJDD(1) + t605 * t682 - t704) * t597;
t519 = -g(3) * t597 + t704 * t598;
t584 = t592 * t605;
t474 = -pkin(2) * t584 + pkin(6) * t641 + t519;
t407 = -t602 * t473 + t474 * t600;
t408 = t600 * t473 + t602 * t474;
t351 = -t407 * t602 + t408 * t600;
t674 = t351 * t597;
t673 = t351 * t598;
t463 = t507 + t644;
t672 = t463 * t602;
t669 = t466 * t600;
t667 = t466 * t602;
t664 = t498 * t600;
t663 = t498 * t602;
t659 = t506 * t600;
t657 = t506 * t602;
t554 = qJ(2) * t605 + t622 + t675;
t655 = t554 * t601;
t654 = t554 * t603;
t651 = t561 * t600;
t649 = t591 * t605;
t648 = t597 * t598;
t640 = qJDD(1) * t601;
t639 = qJDD(1) * t603;
t630 = qJ(4) * t600 + pkin(2);
t629 = t554 + t675;
t352 = t407 * t600 + t602 * t408;
t518 = t704 * t597 + t679;
t433 = t518 * t597 + t598 * t519;
t527 = -t576 * t601 - t603 * t577;
t575 = -t601 * t605 + t639;
t627 = -pkin(5) * t575 - g(3) * t601;
t492 = pkin(3) * t562 - qJ(4) * t564;
t618 = -t604 * pkin(3) + qJDD(3) * qJ(4) - t562 * t492 + t408;
t432 = t518 * t598 - t519 * t597;
t526 = t576 * t603 - t577 * t601;
t574 = t603 * t605 + t640;
t588 = 0.2e1 * t642;
t373 = t588 + t618;
t568 = t598 * t691;
t523 = -t568 * t601 + t598 * t639;
t615 = t568 * t603 + t598 * t640;
t613 = -qJDD(3) * pkin(3) - t604 * qJ(4) + t492 * t564 + qJDD(4) + t407;
t612 = -t507 * pkin(4) - qJ(5) * t686 + qJD(3) * t533 + qJDD(5) + t618;
t334 = t588 + t612;
t611 = t509 * pkin(4) - qJ(5) * t715 + t613;
t332 = (pkin(4) * t562 + t684) * qJD(3) + t611;
t341 = t610 - t681 + 0.2e1 * t697;
t608 = t609 + t693;
t583 = t592 * qJDD(1);
t582 = t591 * qJDD(1);
t573 = t584 - t649;
t572 = t584 + t649;
t571 = t583 - t582;
t570 = t583 + t582;
t567 = t597 * t691;
t555 = -pkin(5) * t574 + g(3) * t603;
t537 = t602 * t561;
t536 = t602 * t560;
t535 = t600 * t560;
t532 = t575 * t648;
t531 = t574 * t648;
t524 = t567 * t603 + t597 * t640;
t522 = t567 * t601 - t597 * t639;
t521 = t570 * t603 - t572 * t601;
t520 = t570 * t601 + t572 * t603;
t508 = t561 - 0.2e1 * t551;
t482 = -t536 + t651;
t481 = -t535 - t537;
t479 = (-t562 * t602 + t564 * t600) * qJD(3);
t464 = -t507 + t644;
t430 = -pkin(4) * t715 - qJ(4) * t506;
t429 = t465 * t600 - t536;
t428 = -t508 * t600 - t657;
t427 = t464 * t602 + t651;
t426 = -t465 * t602 - t535;
t425 = t508 * t602 - t659;
t424 = t464 * t600 - t537;
t417 = -t481 * t597 + t482 * t598;
t416 = t481 * t598 + t482 * t597;
t414 = t479 * t598 - t701;
t412 = t433 * t603 - t655;
t411 = t433 * t601 + t654;
t410 = t657 + t669;
t409 = t659 - t667;
t405 = -t663 + t728;
t404 = -t669 - t672;
t403 = -t463 * t600 + t667;
t402 = -t664 - t740;
t379 = -pkin(2) * t508 - t664 - t729;
t378 = t417 * t603 + t707;
t377 = t417 * t601 - t706;
t376 = pkin(4) * t714 + t678 * t466;
t375 = t663 + t735;
t372 = -t426 * t597 + t429 * t598;
t371 = -t425 * t597 + t428 * t598;
t370 = -t424 * t597 + t427 * t598;
t369 = t426 * t598 + t429 * t597;
t368 = t424 * t598 + t427 * t597;
t361 = t609 - t681;
t360 = t508 * t601 + t766;
t358 = -t508 * t603 + t767;
t356 = -pkin(1) * t416 - pkin(2) * t481 + t678 * t561 + t676;
t353 = -t409 * t597 + t410 * t598;
t348 = t613 - t708;
t347 = -pkin(3) * t694 + t373;
t346 = t372 * t603 + t707;
t345 = t370 * t603 + t707;
t344 = t372 * t601 - t706;
t343 = t370 * t601 - t706;
t342 = (t463 + t507) * pkin(3) - t609;
t339 = -t463 * t601 + t769;
t337 = t463 * t603 + t770;
t336 = -t403 * t597 + t404 * t598;
t335 = pkin(2) * t498 + pkin(6) * t352;
t333 = -pkin(1) * t368 - pkin(2) * t424;
t331 = pkin(4) * t686 + t608 - t681;
t330 = -pkin(6) * t424 - t351;
t329 = t408 + t763;
t328 = -pkin(1) * t369 - pkin(2) * t426 + pkin(3) * t465 + t676;
t327 = -t708 + qJD(3) * t684 + (t561 + t551) * pkin(4) + t611;
t326 = t373 * t602 + t600 * t613;
t325 = t373 * t600 - t602 * t613;
t324 = pkin(6) * t427 + t352 - t709;
t323 = t407 + t747;
t322 = -pkin(3) * t669 + t341 * t602 - t728;
t321 = qJ(4) * t672 - t342 * t600 + t740;
t320 = -pkin(4) * t560 - t678 * t694 + t334;
t319 = (t540 + t686) * pkin(4) + t341 + t693;
t318 = t608 - qJ(5) * t506 + (-t541 + t686) * pkin(4) + (-t506 - t507) * pkin(3);
t317 = -t379 * t597 + t405 * t598 + t739;
t316 = t729 + t341 * t600 + (pkin(2) + t680) * t466;
t315 = t352 * t598 - t674;
t314 = t352 * t597 + t673;
t313 = t342 * t602 + t463 * t630 + t759;
t312 = pkin(3) * t540 - t618 + t736;
t311 = -t375 * t597 + t402 * t598 + t748;
t310 = t315 * t603 - t498 * t601;
t309 = t315 * t601 + t498 * t603;
t308 = pkin(3) * t715 - t613 + t772;
t307 = t332 * t600 + t334 * t602;
t306 = -t332 * t602 + t334 * t600;
t305 = -pkin(6) * t426 - t347 * t600 + t348 * t602;
t304 = -t318 * t600 + t430 * t602 - t740;
t303 = pkin(4) * t332 + qJ(4) * t331;
t302 = -t678 * t715 + t332 - t772;
t301 = t318 * t602 + t430 * t600 + t735;
t300 = pkin(6) * t429 + t347 * t602 + t348 * t600 - t709;
t299 = t540 * t678 - t612 + t736;
t298 = t319 * t602 - t376 * t600 - t728;
t297 = -pkin(1) * t314 - pkin(2) * t351;
t296 = pkin(2) * t466 + t319 * t600 + t376 * t602 + t729;
t295 = -t325 * t597 + t326 * t598;
t294 = t325 * t598 + t326 * t597;
t293 = -pkin(6) * t325 + (-pkin(3) * t600 + qJ(4) * t602) * t361;
t292 = -pkin(6) * t481 - t320 * t600 + t327 * t602;
t291 = -qJ(2) * t368 - t324 * t597 + t330 * t598;
t290 = pkin(6) * t482 + t320 * t602 + t327 * t600 - t709;
t289 = pkin(4) * t334 + t678 * t331;
t288 = t295 * t603 - t361 * t601;
t287 = t295 * t601 + t361 * t603;
t286 = pkin(6) * t326 + (t630 + t680) * t361;
t285 = -pkin(6) * t673 - qJ(2) * t314 - t335 * t597;
t284 = -t316 * t597 + t322 * t598 - t739;
t283 = -t313 * t597 + t321 * t598 - t748;
t282 = -t306 * t597 + t307 * t598;
t281 = t306 * t598 + t307 * t597;
t280 = -t301 * t597 + t304 * t598 + t748;
t279 = -qJ(2) * t369 - t300 * t597 + t305 * t598;
t278 = t282 * t603 - t331 * t601;
t277 = t282 * t601 + t331 * t603;
t276 = -pkin(1) * t294 - pkin(2) * t325 + pkin(3) * t613 - qJ(4) * t373;
t275 = -t296 * t597 + t298 * t598 - t739;
t274 = -qJ(2) * t416 - t290 * t597 + t292 * t598;
t273 = -pkin(6) * t306 - t289 * t600 + t303 * t602;
t272 = pkin(2) * t331 + pkin(6) * t307 + t289 * t602 + t303 * t600;
t271 = -qJ(2) * t294 - t286 * t597 + t293 * t598;
t270 = -pkin(1) * t281 - pkin(2) * t306 - qJ(4) * t334 + t678 * t332;
t269 = -qJ(2) * t281 - t272 * t597 + t273 * t598;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t574, -t575, 0, t527, 0, 0, 0, 0, 0, 0, -t615, t524, t521, t412, 0, 0, 0, 0, 0, 0, t744, t360, t345, t310, 0, 0, 0, 0, 0, 0, t346, t339, t732, t288, 0, 0, 0, 0, 0, 0, t378, t732, t744, t278; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t575, -t574, 0, t526, 0, 0, 0, 0, 0, 0, t523, t522, t520, t411, 0, 0, 0, 0, 0, 0, t745, t358, t343, t309, 0, 0, 0, 0, 0, 0, t344, t337, t733, t287, 0, 0, 0, 0, 0, 0, t377, t733, t745, t277; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t432, 0, 0, 0, 0, 0, 0, -t363, -t721, t368, t314, 0, 0, 0, 0, 0, 0, t369, t363, t721, t294, 0, 0, 0, 0, 0, 0, t416, t721, -t363, t281; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t575, 0, -t574, 0, t627, -t555, -t526, -pkin(5) * t526, t532, t571 * t603 - t573 * t601, t524, -t532, t615, 0, -pkin(5) * t523 - t518 * t601 - t597 * t654, -pkin(5) * t522 - t519 * t601 - t598 * t654, -pkin(5) * t520 + t432 * t603, -pkin(5) * t411 - (pkin(1) * t601 - qJ(2) * t603) * t432, t623, t371 * t603 + t719, t561 * t601 + t752, t624, -t761, t703, t311 * t603 - t323 * t601 - t754, -pkin(5) * t358 + t317 * t603 - t329 * t601, -pkin(5) * t343 + t291 * t603 - t333 * t601, -pkin(5) * t309 + t285 * t603 - t297 * t601, t414 * t603 + t585, -t773, -t464 * t601 + t764, t623, t336 * t603 + t719, t624, -pkin(5) * t344 + t279 * t603 - t328 * t601, -pkin(5) * t337 + t283 * t603 - t308 * t601, t284 * t603 - t312 * t601 - t749, -pkin(5) * t287 + t271 * t603 - t276 * t601, t703, t761, t773, t624, t353 * t603 - t719, t623, -pkin(5) * t377 + t274 * t603 - t356 * t601, t275 * t603 - t299 * t601 - t749, t280 * t603 - t302 * t601 - t754, -pkin(5) * t277 + t269 * t603 - t270 * t601; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t574, 0, t575, 0, t555, t627, t527, pkin(5) * t527, t531, t571 * t601 + t573 * t603, t522, -t531, -t523, 0, -pkin(5) * t615 + t518 * t603 - t597 * t655, pkin(5) * t524 + t519 * t603 - t598 * t655, pkin(5) * t521 + t432 * t601, pkin(5) * t412 - (-pkin(1) * t603 - qJ(2) * t601) * t432, t625, t371 * t601 - t718, -t561 * t603 + t753, t626, -t762, t702, t311 * t601 + t323 * t603 + t755, pkin(5) * t360 + t317 * t601 + t329 * t603, pkin(5) * t345 + t291 * t601 + t333 * t603, pkin(5) * t310 + t285 * t601 + t297 * t603, t414 * t601 - t638, t774, t464 * t603 + t765, t625, t336 * t601 - t718, t626, pkin(5) * t346 + t279 * t601 + t328 * t603, pkin(5) * t339 + t283 * t601 + t308 * t603, t284 * t601 + t312 * t603 + t750, pkin(5) * t288 + t271 * t601 + t276 * t603, t702, t762, -t774, t626, t353 * t601 + t718, t625, pkin(5) * t378 + t274 * t601 + t356 * t603, t275 * t601 + t299 * t603 + t750, t280 * t601 + t302 * t603 + t755, pkin(5) * t278 + t269 * t601 + t270 * t603; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t576, t577, 0, 0, t582, 0.2e1 * t597 * t641, 0, t583, 0, 0, -qJ(2) * t568 + t598 * t629, qJ(2) * t567 - t597 * t629, pkin(1) * t572 + qJ(2) * t570 + t433, pkin(1) * t554 + qJ(2) * t433, t397, t425 * t598 + t428 * t597, -t757, t396, t751, t689, t375 * t598 + t402 * t597 + t746, -pkin(1) * t508 + t379 * t598 + t405 * t597 + t768, qJ(2) * t370 + t324 * t598 + t330 * t597 - t710, pkin(1) * t498 - pkin(6) * t674 + qJ(2) * t315 + t335 * t598, t479 * t597 + t699, t757, -t751, t397, t403 * t598 + t404 * t597, t396, qJ(2) * t372 + t300 * t598 + t305 * t597 - t710, pkin(1) * t463 + t313 * t598 + t321 * t597 + t771, t316 * t598 + t322 * t597 + t734, pkin(1) * t361 + qJ(2) * t295 + t286 * t598 + t293 * t597, t689, -t751, -t757, t396, t409 * t598 + t410 * t597, t397, qJ(2) * t417 + t290 * t598 + t292 * t597 - t710, t296 * t598 + t298 * t597 + t734, t301 * t598 + t304 * t597 + t746, pkin(1) * t331 + qJ(2) * t282 + t272 * t598 + t273 * t597;];
tauB_reg = t1;
