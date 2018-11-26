% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRRRR10
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
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d1,d2,d3,d4,d5,d6]';
% 
% Output:
% tau_reg [6x38]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox (ehem. IRT-Maple-Toolbox)
% Datum: 2018-11-23 11:28
% Revision: 76f9d5e39f14dc242b53c0d9d3d9db48bd8f37c0
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRRR10_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR10_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR10_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRR10_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR10_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6RRRRRR10_invdynJ_fixb_regmin_slag_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2018-11-23 11:16:33
% EndTime: 2018-11-23 11:17:57
% DurationCPUTime: 42.03s
% Computational Cost: add. (70569->1100), mult. (195515->1580), div. (0->0), fcn. (169667->30), ass. (0->493)
t525 = cos(qJ(2));
t514 = cos(pkin(6));
t777 = pkin(1) * t514;
t493 = t525 * t777;
t481 = qJD(1) * t493;
t519 = sin(qJ(2));
t511 = sin(pkin(6));
t513 = cos(pkin(7));
t660 = pkin(11) * t513 + pkin(10);
t618 = t511 * t660;
t581 = t519 * t618;
t389 = -qJD(1) * t581 + t481;
t776 = pkin(1) * t519;
t492 = t514 * t776;
t539 = -t525 * t618 - t492;
t390 = t539 * qJD(1);
t510 = sin(pkin(7));
t774 = pkin(11) * t510;
t577 = pkin(2) * t519 - t525 * t774;
t700 = qJD(1) * t511;
t430 = t577 * t700;
t524 = cos(qJ(3));
t693 = qJD(3) * t524;
t655 = t513 * t693;
t518 = sin(qJ(3));
t729 = t513 * t518;
t739 = t510 * t518;
t810 = -pkin(2) * t655 + t524 * t389 + t390 * t729 + t430 * t739;
t722 = t519 * t524;
t723 = t518 * t525;
t572 = t513 * t722 + t723;
t413 = t572 * t700;
t512 = cos(pkin(8));
t509 = sin(pkin(8));
t698 = qJD(1) * t519;
t659 = t511 * t698;
t627 = t510 * t659;
t592 = t509 * t627;
t550 = -t413 * t512 + t592;
t771 = pkin(12) * t512;
t619 = t510 * (-pkin(11) - t771);
t580 = t518 * t619;
t809 = -pkin(12) * t550 + qJD(3) * t580 - t810;
t718 = t524 * t525;
t725 = t518 * t519;
t570 = -t513 * t725 + t718;
t414 = t570 * t700;
t728 = t513 * t524;
t738 = t510 * t524;
t604 = -t518 * t389 + t390 * t728 + t430 * t738;
t212 = pkin(3) * t627 - t414 * t771 + t604;
t490 = pkin(2) * t729;
t392 = (t524 * t619 - t490) * qJD(3);
t808 = t212 - t392;
t314 = -t390 * t510 + t513 * t430;
t772 = pkin(12) * t509;
t249 = pkin(3) * t413 - t414 * t772 + t314;
t429 = (pkin(3) * t518 - t524 * t772) * t510 * qJD(3);
t807 = t249 - t429;
t520 = sin(qJ(1));
t526 = cos(qJ(1));
t678 = pkin(6) + qJ(2);
t617 = cos(t678) / 0.2e1;
t679 = pkin(6) - qJ(2);
t641 = cos(t679);
t542 = t641 / 0.2e1 + t617;
t421 = t519 * t520 - t526 * t542;
t614 = sin(t678) / 0.2e1;
t638 = sin(t679);
t458 = t614 - t638 / 0.2e1;
t422 = t458 * t526 + t520 * t525;
t676 = pkin(7) + qJ(3);
t613 = sin(t676) / 0.2e1;
t677 = pkin(7) - qJ(3);
t637 = sin(t677);
t455 = t613 + t637 / 0.2e1;
t616 = cos(t676) / 0.2e1;
t640 = cos(t677);
t461 = t640 / 0.2e1 + t616;
t734 = t511 * t526;
t278 = t421 * t461 + t422 * t518 + t455 * t734;
t365 = -t421 * t510 + t513 * t734;
t235 = t278 * t509 - t365 * t512;
t516 = sin(qJ(5));
t522 = cos(qJ(5));
t456 = t613 - t637 / 0.2e1;
t460 = t616 - t640 / 0.2e1;
t276 = -t421 * t456 + t422 * t524 + t460 * t734;
t674 = pkin(8) + qJ(4);
t612 = sin(t674) / 0.2e1;
t675 = pkin(8) - qJ(4);
t636 = sin(t675);
t454 = t612 - t636 / 0.2e1;
t615 = cos(t674) / 0.2e1;
t639 = cos(t675);
t459 = t615 - t639 / 0.2e1;
t523 = cos(qJ(4));
t531 = t276 * t523 - t278 * t454 + t365 * t459;
t102 = t235 * t516 + t522 * t531;
t517 = sin(qJ(4));
t541 = t612 + t636 / 0.2e1;
t579 = t639 / 0.2e1 + t615;
t142 = t276 * t517 + t278 * t579 + t365 * t541;
t515 = sin(qJ(6));
t521 = cos(qJ(6));
t806 = t102 * t515 - t142 * t521;
t805 = t102 * t521 + t142 * t515;
t691 = qJD(4) * t523;
t653 = t509 * t691;
t720 = t523 * t524;
t727 = t517 * t518;
t785 = t512 * t720 - t727;
t710 = -t414 * t523 - t517 * t550 + t513 * t653 + (t785 * qJD(4) + (-t512 * t727 + t720) * qJD(3)) * t510;
t724 = t518 * t523;
t726 = t517 * t524;
t574 = t512 * t726 + t724;
t692 = qJD(4) * t517;
t654 = t509 * t692;
t731 = t512 * t523;
t709 = -t413 * t731 - t414 * t517 + t523 * t592 + t513 * t654 + (t574 * qJD(4) + (t512 * t724 + t726) * qJD(3)) * t510;
t339 = -t413 * t509 - t512 * t627;
t694 = qJD(3) * t518;
t656 = t510 * t694;
t576 = t509 * t656 + t339;
t623 = t518 * t659;
t697 = qJD(1) * t525;
t658 = t511 * t697;
t699 = qJD(1) * t514;
t484 = qJD(2) + t699;
t747 = t484 * t510;
t347 = -t623 + (t513 * t658 + t747) * t524;
t571 = t513 * t723 + t722;
t554 = t571 * t511;
t348 = qJD(1) * t554 + t484 * t739;
t732 = t512 * t517;
t271 = t347 * t523 - t348 * t732;
t802 = -t271 + t653;
t708 = t509 * t808 - t512 * t807;
t735 = t511 * t525;
t342 = pkin(11) * t747 + (t660 * t735 + t492) * qJD(1);
t346 = pkin(2) * t484 + t389;
t565 = -pkin(2) * t525 - t519 * t774 - pkin(1);
t420 = t565 * t511;
t407 = qJD(1) * t420;
t233 = -t518 * t342 + t346 * t728 + t407 * t738;
t185 = -t348 * t771 + t233;
t234 = t518 * (t346 * t513 + t407 * t510) + t524 * t342;
t733 = t512 * t347;
t186 = -pkin(12) * t733 - t234;
t745 = t509 * t347;
t272 = pkin(3) * t348 - pkin(12) * t745;
t743 = t509 * t517;
t485 = pkin(12) * t743;
t788 = pkin(3) * t731 - t485;
t801 = t788 * qJD(4) - t523 * t185 - t186 * t732 - t272 * t743;
t703 = pkin(11) * t738 + t490;
t370 = (t509 * t513 + t512 * t738) * pkin(12) + t703;
t491 = pkin(2) * t728;
t387 = pkin(3) * t513 + t491 + t580;
t419 = (-pkin(3) * t524 - t518 * t772 - pkin(2)) * t510;
t651 = t512 * t691;
t800 = -t370 * t692 + t387 * t651 + t419 * t653 + t523 * t809 - t808 * t732 - t807 * t743;
t799 = t235 * t522 - t516 * t531;
t798 = pkin(13) * t576 + t800;
t797 = -t709 * pkin(4) + pkin(13) * t710 - t708;
t131 = -t186 * t509 + t512 * t272;
t721 = t523 * t348;
t270 = t347 * t517 + t512 * t721;
t796 = pkin(4) * t270 - pkin(13) * t271 + t131 - (pkin(4) * t517 - pkin(13) * t523) * t509 * qJD(4);
t752 = t348 * t509;
t795 = -pkin(13) * t752 + t801;
t682 = qJDD(1) * t514;
t483 = qJDD(2) + t682;
t528 = qJD(2) * t572 + qJD(3) * t571;
t573 = t513 * t718 - t725;
t254 = -t511 * (-qJD(1) * t528 + t573 * qJDD(1)) + (-t483 * t524 + t484 * t694) * t510;
t652 = t512 * t692;
t794 = t370 * t691 + t387 * t652 + t419 * t654 + t517 * t809;
t379 = t510 * t574 + t513 * t743;
t440 = t509 * t738 - t512 * t513;
t322 = t379 * t516 + t522 * t440;
t715 = -qJD(5) * t322 + t516 * t576 + t522 * t710;
t323 = t379 * t522 - t440 * t516;
t714 = qJD(5) * t323 + t516 * t710 - t522 * t576;
t793 = t270 - t654;
t444 = -t522 * t512 + t516 * t743;
t744 = t509 * t516;
t707 = -qJD(5) * t444 - t348 * t744 + t522 * t802;
t742 = t509 * t522;
t445 = t512 * t516 + t517 * t742;
t706 = qJD(5) * t445 + t348 * t742 + t516 * t802;
t741 = t509 * t523;
t704 = pkin(3) * t732 + pkin(12) * t741;
t792 = t704 * qJD(4) - t517 * t185;
t635 = t484 * t513 - t510 * t658;
t600 = qJD(3) + t635;
t568 = t509 * t600;
t540 = t568 + t733;
t248 = t517 * t540 + t721;
t680 = qJDD(1) * t525;
t646 = t511 * t680;
t681 = qJDD(1) * t519;
t647 = t511 * t681;
t650 = t510 * t693;
t253 = t484 * t650 + t483 * t739 + t646 * t729 + (-qJD(2) * t513 - qJD(3)) * t623 + (t647 + (qJD(3) * t513 + qJD(2)) * t658) * t524;
t593 = t483 * t513 - t510 * t646 + qJDD(3);
t683 = qJD(1) * qJD(2);
t649 = t519 * t683;
t622 = t511 * t649;
t535 = t510 * t622 + t593;
t534 = t535 * t509;
t96 = qJD(4) * t248 + t517 * t253 + t254 * t731 - t523 * t534;
t386 = t523 * t568;
t246 = -t347 * t731 + t348 * t517 - t386;
t244 = qJD(5) + t246;
t297 = -t512 * t600 - qJD(4) + t745;
t164 = t248 * t516 + t522 * t297;
t162 = qJD(6) + t164;
t506 = t511 ^ 2;
t778 = 0.2e1 * t506;
t762 = -t392 * t731 + (-pkin(4) * t656 - t429 * t523) * t509 - pkin(4) * t339 - (-t212 * t512 - t249 * t509) * t523 + t794;
t760 = pkin(4) * t752 - (-t186 * t512 - t272 * t509) * t523 + t792;
t302 = -t387 * t509 + t512 * t419;
t377 = -t510 * t785 - t513 * t741;
t227 = pkin(4) * t377 - pkin(13) * t379 + t302;
t663 = t523 * t370 + t387 * t732 + t419 * t743;
t241 = -pkin(13) * t440 + t663;
t713 = t516 * t227 + t522 * t241;
t435 = pkin(13) * t512 + t704;
t436 = (-pkin(4) * t523 - pkin(13) * t517 - pkin(3)) * t509;
t705 = t522 * t435 + t516 * t436;
t687 = qJD(5) * t522;
t689 = qJD(5) * t516;
t787 = t435 * t689 - t436 * t687 + t516 * t796 - t522 * t795;
t786 = -t227 * t687 + t241 * t689 + t797 * t516 - t522 * t798;
t671 = pkin(1) * t680;
t479 = t514 * t671;
t648 = t525 * t683;
t562 = -t648 - t681;
t672 = qJD(2) * t777;
t630 = qJD(1) * t672;
t296 = pkin(2) * t483 - t519 * t630 + t562 * t618 + t479;
t556 = qJD(2) * t577;
t328 = (qJD(1) * t556 + qJDD(1) * t565) * t511;
t221 = -t296 * t510 + t513 * t328;
t106 = pkin(3) * t254 - t253 * t772 + t221;
t167 = pkin(12) * t540 + t234;
t168 = pkin(3) * t600 + t185;
t295 = -t346 * t510 + t513 * t407;
t206 = -pkin(3) * t347 - pkin(12) * t752 + t295;
t548 = -qJDD(1) * t492 - t525 * t630 + (t622 - t646) * pkin(10);
t291 = (t483 * t510 + (-t649 + t680) * t513 * t511) * pkin(11) - t548;
t546 = -t524 * t291 - t296 * t729 - t328 * t739 + t342 * t694 - t346 * t655 - t407 * t650;
t71 = (-t254 * t512 + t534) * pkin(12) - t546;
t606 = -t518 * t291 + t296 * t728 + t328 * t738;
t108 = -qJD(3) * t234 + t606;
t73 = pkin(3) * t535 - t253 * t771 + t108;
t17 = t106 * t743 - t167 * t692 + t168 * t651 + t206 * t653 + t523 * t71 + t73 * t732;
t207 = -t254 * t509 - t512 * t535 - qJDD(4);
t15 = -pkin(13) * t207 + t17;
t44 = t512 * t106 - t509 * t73;
t95 = qJD(4) * t386 + t523 * t253 - t254 * t732 + t347 * t651 - t348 * t692 + t517 * t534;
t21 = pkin(4) * t96 - pkin(13) * t95 + t44;
t63 = t523 * t167 + t168 * t732 + t206 * t743;
t56 = -pkin(13) * t297 + t63;
t99 = -t168 * t509 + t512 * t206;
t58 = pkin(4) * t246 - pkin(13) * t248 + t99;
t30 = t516 * t58 + t522 * t56;
t6 = -qJD(5) * t30 - t15 * t516 + t522 * t21;
t62 = -t517 * t167 + t523 * (t168 * t512 + t206 * t509);
t166 = t248 * t522 - t297 * t516;
t94 = qJDD(5) + t96;
t4 = -pkin(5) * t94 - t6;
t424 = -t526 * t519 - t520 * t542;
t426 = t458 * t520 - t525 * t526;
t736 = t511 * t520;
t280 = t424 * t461 + t426 * t518 + t455 * t736;
t575 = -t424 * t510 + t513 * t736;
t237 = -t280 * t509 + t512 * t575;
t282 = -t424 * t456 + t426 * t524 + t460 * t736;
t530 = t280 * t454 - t282 * t523 - t459 * t575;
t104 = t237 * t522 - t516 * t530;
t457 = t614 + t638 / 0.2e1;
t462 = t617 - t641 / 0.2e1;
t318 = t455 * t514 + t457 * t461 + t462 * t518;
t730 = t513 * t514;
t582 = t457 * t510 - t730;
t268 = -t318 * t509 - t512 * t582;
t319 = t456 * t457 - t460 * t514 - t462 * t524;
t533 = t318 * t454 + t319 * t523 + t459 * t582;
t559 = g(1) * t104 + g(2) * t799 + g(3) * (t268 * t522 - t516 * t533);
t781 = t162 * (pkin(5) * t166 + pkin(14) * t162) + t4 + t559;
t473 = -pkin(5) * t522 - pkin(14) * t516 - pkin(4);
t51 = qJD(5) * t166 + t522 * t207 + t516 * t95;
t49 = qJDD(6) + t51;
t780 = t162 * (t63 - t244 * (pkin(5) * t516 - pkin(14) * t522)) - t473 * t49;
t312 = t511 * t528 + t514 * t656;
t695 = qJD(2) * t519;
t657 = t511 * t695;
t625 = t510 * t657;
t287 = -t312 * t509 - t512 * t625;
t702 = pkin(10) * t735 + t492;
t371 = (t510 * t514 + t513 * t735) * pkin(11) + t702;
t388 = pkin(2) * t514 + t493 - t581;
t482 = t525 * t672;
t393 = -qJD(2) * t581 + t482;
t394 = t539 * qJD(2);
t431 = t511 * t556;
t545 = -t371 * t694 + t388 * t655 + t524 * t393 + t394 * t729 + t420 * t650 + t431 * t739;
t591 = t509 * t625;
t549 = -t312 * t512 + t591;
t120 = pkin(12) * t549 + t545;
t311 = t514 * t650 + (qJD(2) * t570 + qJD(3) * t573) * t511;
t359 = t524 * t371;
t529 = -t393 * t518 + t394 * t728 + t431 * t738 + (-t359 + (-t388 * t513 - t420 * t510) * t518) * qJD(3);
t121 = pkin(3) * t625 - t311 * t771 + t529;
t315 = -t394 * t510 + t513 * t431;
t172 = pkin(3) * t312 - t311 * t772 + t315;
t378 = -t511 * t573 - t514 * t738;
t441 = t510 * t735 - t730;
t585 = -t378 * t512 - t441 * t509;
t662 = t388 * t729 + t420 * t739 + t359;
t200 = pkin(12) * t585 + t662;
t380 = t514 * t739 + t554;
t605 = -t371 * t518 + t388 * t728 + t420 * t738;
t205 = -pkin(3) * t441 - t380 * t771 + t605;
t303 = -t388 * t510 + t513 * t420;
t226 = pkin(3) * t378 - t380 * t772 + t303;
t544 = t523 * t120 + t121 * t732 + t172 * t743 - t200 * t692 + t205 * t651 + t226 * t653;
t27 = -pkin(13) * t287 + t544;
t749 = t380 * t517;
t133 = t311 * t523 + t549 * t517 + (t523 * t585 - t749) * qJD(4);
t259 = t380 * t523 + t517 * t585;
t134 = qJD(4) * t259 + t311 * t517 + t312 * t731 - t523 * t591;
t82 = -t121 * t509 + t512 * t172;
t39 = pkin(4) * t134 - pkin(13) * t133 + t82;
t321 = -t378 * t509 + t512 * t441;
t665 = t523 * t200 + t205 * t732 + t226 * t743;
t66 = -pkin(13) * t321 + t665;
t114 = -t205 * t509 + t512 * t226;
t258 = t378 * t731 + t441 * t741 + t749;
t77 = pkin(4) * t258 - pkin(13) * t259 + t114;
t595 = t516 * t77 + t522 * t66;
t779 = -qJD(5) * t595 - t27 * t516 + t39 * t522;
t111 = t166 * t521 + t244 * t515;
t50 = -t516 * t207 - t248 * t689 - t297 * t687 + t522 * t95;
t23 = qJD(6) * t111 + t50 * t515 - t521 * t94;
t5 = t522 * t15 + t516 * t21 - t56 * t689 + t58 * t687;
t3 = pkin(14) * t94 + t5;
t25 = pkin(14) * t244 + t30;
t55 = pkin(4) * t297 - t62;
t33 = pkin(5) * t164 - pkin(14) * t166 + t55;
t599 = t25 * t515 - t33 * t521;
t578 = -t106 * t741 + t167 * t691 + t168 * t652 + t206 * t654 + t517 * t71 - t73 * t731;
t16 = pkin(4) * t207 + t578;
t8 = pkin(5) * t51 - pkin(14) * t50 + t16;
t1 = -t599 * qJD(6) + t521 * t3 + t515 * t8;
t775 = pkin(2) * t510;
t770 = -t709 * pkin(5) + qJD(5) * t713 + t798 * t516 + t797 * t522;
t767 = pkin(13) * qJD(5);
t685 = qJD(6) * t521;
t686 = qJD(6) * t515;
t22 = -t166 * t686 + t244 * t685 + t521 * t50 + t515 * t94;
t766 = t22 * t515;
t764 = t515 * t49;
t763 = t521 * t49;
t761 = pkin(5) * t793 + qJD(5) * t705 + t795 * t516 + t796 * t522;
t138 = pkin(4) * t248 + pkin(13) * t246;
t758 = t516 * t138 + t522 * t62;
t109 = t166 * t515 - t521 * t244;
t757 = t109 * t162;
t756 = t111 * t162;
t755 = t164 * t244;
t754 = t166 * t244;
t753 = t246 * t522;
t748 = t459 * t510;
t746 = t506 * qJD(1) ^ 2;
t740 = t510 * t512;
t737 = t511 * t519;
t262 = t323 * t515 - t521 * t377;
t717 = -qJD(6) * t262 + t515 * t709 + t521 * t715;
t263 = t323 * t521 + t377 * t515;
t716 = qJD(6) * t263 + t515 * t715 - t521 * t709;
t397 = t445 * t515 + t521 * t741;
t712 = -qJD(6) * t397 - t515 * t793 + t521 * t707;
t669 = t515 * t741;
t711 = -qJD(6) * t669 + t445 * t685 + t515 * t707 + t521 * t793;
t507 = t519 ^ 2;
t701 = -t525 ^ 2 + t507;
t696 = qJD(2) * t510;
t690 = qJD(5) * t515;
t688 = qJD(5) * t521;
t684 = qJD(2) - t484;
t670 = t525 * t746;
t634 = t162 * t521;
t633 = t522 * t244;
t632 = t484 + t699;
t631 = t483 + t682;
t629 = -t517 * t120 - t200 * t691 - t205 * t652 - t226 * t654;
t116 = pkin(14) * t377 + t713;
t621 = -pkin(5) * t714 + pkin(14) * t715 + qJD(6) * t116 - t762;
t357 = t517 * t370;
t584 = t387 * t512 + t419 * t509;
t240 = pkin(4) * t440 - t523 * t584 + t357;
t139 = pkin(5) * t322 - pkin(14) * t323 + t240;
t620 = -pkin(14) * t709 - qJD(6) * t139 + t786;
t434 = t485 + (-pkin(3) * t523 - pkin(4)) * t512;
t324 = pkin(5) * t444 - pkin(14) * t445 + t434;
t609 = pkin(14) * t793 - qJD(6) * t324 + t787;
t327 = -pkin(14) * t741 + t705;
t608 = -pkin(5) * t706 + pkin(14) * t707 + qJD(6) * t327 - t760;
t603 = -t414 + t650;
t136 = t248 * t515 - t521 * t753;
t601 = t521 * t687 - t136;
t12 = t25 * t521 + t33 * t515;
t32 = pkin(14) * t258 + t595;
t201 = t259 * t516 + t522 * t321;
t202 = t259 * t522 - t321 * t516;
t196 = t517 * t200;
t588 = t205 * t512 + t226 * t509;
t65 = pkin(4) * t321 - t523 * t588 + t196;
t45 = pkin(5) * t201 - pkin(14) * t202 + t65;
t597 = t32 * t521 + t45 * t515;
t596 = -t32 * t515 + t45 * t521;
t29 = -t516 * t56 + t522 * t58;
t594 = -t516 * t66 + t522 * t77;
t590 = t121 * t512 + t172 * t509;
t127 = t202 * t521 + t258 * t515;
t126 = t202 * t515 - t521 * t258;
t587 = t227 * t522 - t241 * t516;
t583 = -t435 * t516 + t436 * t522;
t569 = t522 * t27 + t516 * t39 - t66 * t689 + t77 * t687;
t567 = -pkin(13) * t94 + t244 * t55;
t564 = qJD(3) * t600;
t147 = -t280 * t579 - t282 * t517 - t541 * t575;
t187 = -t318 * t579 + t319 * t517 + t541 * t582;
t558 = g(1) * t147 + g(2) * t142 + g(3) * t187;
t557 = -g(1) * t530 - g(2) * t531 - g(3) * t533;
t553 = -t16 + t558;
t552 = t702 * t484;
t551 = t510 * t600 * t737;
t24 = -pkin(5) * t244 - t29;
t547 = -pkin(14) * t49 + (t24 + t29) * t162;
t2 = -qJD(6) * t12 - t515 * t3 + t521 * t8;
t537 = pkin(13) * qJD(6) * t162 - t558;
t536 = t510 * t541;
t532 = (pkin(14) * t248 - qJD(6) * t473 + t758) * t162 + t557;
t28 = pkin(4) * t287 - t523 * t590 - t629;
t398 = t445 * t521 - t669;
t344 = t456 * t462 + t457 * t524;
t343 = -t457 * t518 + t461 * t462;
t326 = pkin(5) * t741 - t583;
t307 = t424 * t524 + t426 * t456;
t306 = -t424 * t518 + t426 * t461;
t305 = -t421 * t524 - t422 * t456;
t304 = t421 * t518 - t422 * t461;
t300 = -t343 * t509 - t462 * t740;
t261 = -t306 * t509 - t426 * t740;
t260 = -t304 * t509 + t422 * t740;
t229 = t343 * t454 + t344 * t523 + t462 * t748;
t228 = -t343 * t579 + t344 * t517 + t462 * t536;
t224 = t318 * t523 - t319 * t454;
t223 = t318 * t517 + t319 * t579;
t181 = t280 * t523 + t282 * t454;
t180 = t280 * t517 - t282 * t579;
t179 = -t276 * t454 - t278 * t523;
t178 = t276 * t579 - t278 * t517;
t177 = t306 * t454 + t307 * t523 + t426 * t748;
t176 = -t306 * t579 + t307 * t517 + t426 * t536;
t175 = t304 * t454 + t305 * t523 - t422 * t748;
t174 = -t304 * t579 + t305 * t517 - t422 * t536;
t163 = t224 * t522 + t319 * t744;
t161 = t229 * t522 + t300 * t516;
t135 = -t521 * t248 - t515 * t753;
t129 = t268 * t516 + t522 * t533;
t125 = t181 * t522 - t282 * t744;
t124 = t179 * t522 + t276 * t744;
t123 = t177 * t522 + t261 * t516;
t122 = t175 * t522 + t260 * t516;
t115 = -pkin(5) * t377 - t587;
t105 = t237 * t516 + t522 * t530;
t76 = qJD(5) * t202 + t133 * t516 + t522 * t287;
t75 = -qJD(5) * t201 + t133 * t522 - t287 * t516;
t60 = t105 * t521 + t147 * t515;
t59 = -t105 * t515 + t147 * t521;
t42 = -pkin(5) * t248 - t138 * t522 + t516 * t62;
t35 = qJD(6) * t127 - t521 * t134 + t515 * t75;
t34 = -qJD(6) * t126 + t134 * t515 + t521 * t75;
t31 = -pkin(5) * t258 - t594;
t13 = pkin(5) * t76 - pkin(14) * t75 + t28;
t10 = -pkin(5) * t134 - t779;
t9 = pkin(14) * t134 + t569;
t7 = [qJDD(1), g(1) * t520 - g(2) * t526, g(1) * t526 + g(2) * t520 (qJDD(1) * t507 + 0.2e1 * t519 * t648) * t506 (t519 * t680 - t683 * t701) * t778 (qJD(2) * t525 * t632 + t519 * t631) * t511 (t525 * t631 - t632 * t695) * t511, t483 * t514 (-pkin(10) * t737 + t493) * t483 + (-pkin(10) * t647 + t479) * t514 + t671 * t778 + g(1) * t422 + g(2) * t426 + (-t552 + (-0.2e1 * t506 * t776 - t514 * t702) * qJD(1)) * qJD(2) -(-pkin(10) * t657 + t482) * t484 - t702 * t483 + t548 * t514 - g(1) * t421 - g(2) * t424 + t562 * pkin(1) * t778, t253 * t380 + t311 * t348, -t253 * t378 - t254 * t380 + t311 * t347 - t312 * t348, -t441 * t253 + t311 * t600 + t348 * t625 + t380 * t535, t254 * t441 - t312 * t600 + t347 * t625 - t378 * t535, qJD(2) * t551 - t441 * t535, g(1) * t276 + g(2) * t282 - t108 * t441 + t221 * t378 + t233 * t625 + t303 * t254 + t295 * t312 - t315 * t347 + t529 * t600 + t535 * t605, -g(1) * t278 - g(2) * t280 + t221 * t380 - t234 * t625 + t303 * t253 + t295 * t311 + t315 * t348 - t441 * t546 - t535 * t662 - t545 * t600, t133 * t248 + t259 * t95, -t133 * t246 - t134 * t248 - t258 * t95 - t259 * t96, -t133 * t297 - t207 * t259 - t248 * t287 - t321 * t95, t134 * t297 + t207 * t258 + t246 * t287 + t321 * t96, t207 * t321 + t287 * t297, t82 * t246 + t114 * t96 + t44 * t258 + t99 * t134 - t629 * t297 + t196 * t207 + t578 * t321 - t62 * t287 + g(1) * t531 - g(2) * t530 + (-t207 * t588 - t297 * t590) * t523, -g(1) * t142 + g(2) * t147 + t114 * t95 + t99 * t133 + t17 * t321 + t207 * t665 + t82 * t248 + t44 * t259 + t63 * t287 + t297 * t544, t166 * t75 + t202 * t50, -t164 * t75 - t166 * t76 - t201 * t50 - t202 * t51, t134 * t166 + t202 * t94 + t244 * t75 + t258 * t50, -t134 * t164 - t201 * t94 - t244 * t76 - t258 * t51, t134 * t244 + t258 * t94, g(1) * t102 - g(2) * t105 + t29 * t134 + t16 * t201 + t28 * t164 + t244 * t779 + t6 * t258 + t65 * t51 + t55 * t76 + t594 * t94, g(1) * t799 - g(2) * t104 - t30 * t134 + t16 * t202 + t28 * t166 - t569 * t244 - t5 * t258 + t65 * t50 + t55 * t75 - t595 * t94, t111 * t34 + t127 * t22, -t109 * t34 - t111 * t35 - t126 * t22 - t127 * t23, t111 * t76 + t127 * t49 + t162 * t34 + t201 * t22, -t109 * t76 - t126 * t49 - t162 * t35 - t201 * t23, t162 * t76 + t201 * t49 (-qJD(6) * t597 + t13 * t521 - t515 * t9) * t162 + t596 * t49 + t2 * t201 - t599 * t76 + t10 * t109 + t31 * t23 + t4 * t126 + t24 * t35 + g(1) * t805 - g(2) * t60 -(qJD(6) * t596 + t13 * t515 + t521 * t9) * t162 - t597 * t49 - t1 * t201 - t12 * t76 + t10 * t111 + t31 * t22 + t4 * t127 + t24 * t34 - g(1) * t806 - g(2) * t59; 0, 0, 0, -t519 * t670, t701 * t746 (t684 * t697 + t681) * t511 (-t684 * t698 + t680) * t511, t483, -g(1) * t424 + g(2) * t421 - g(3) * t457 + t479 + (-pkin(10) * qJDD(1) * t511 + pkin(1) * t746) * t519 + (-qJD(2) * t702 + t552) * qJD(1) (-pkin(10) * t659 + t481) * t484 + pkin(1) * t670 - g(1) * t426 + g(2) * t422 - g(3) * t462 + t548, t253 * t739 + t348 * t603, -t347 * t414 + t348 * t413 + (t253 * t524 - t254 * t518 + (t347 * t524 - t348 * t518) * qJD(3)) * t510, t513 * t253 - t600 * t414 + (t593 * t518 + t524 * t564 + (t518 * t696 - t348) * t659) * t510, -t254 * t513 + t413 * t600 + (-t518 * t564 + t524 * t593 + (t524 * t696 - t347) * t659) * t510, -qJD(1) * t551 + t513 * t535, -t254 * t775 - t221 * t738 - t703 * t564 + (-pkin(11) * t739 + t491) * t535 + t108 * t513 + t314 * t347 - t604 * t600 - t233 * t627 - g(1) * t307 - g(2) * t305 - g(3) * t344 + (-t413 + t656) * t295, -g(1) * t306 - g(2) * t304 - g(3) * t343 + t546 * t513 + t221 * t739 + t234 * t627 - t253 * t775 + t603 * t295 - t314 * t348 - t703 * t535 + (pkin(11) * t656 + t810) * t600, t248 * t710 + t379 * t95, -t246 * t710 - t248 * t709 - t377 * t95 - t379 * t96, -t207 * t379 + t248 * t576 - t297 * t710 - t440 * t95, t207 * t377 - t246 * t576 + t297 * t709 + t440 * t96, t207 * t440 - t297 * t576, -g(1) * t177 - g(2) * t175 - g(3) * t229 + t578 * t440 + t357 * t207 + t302 * t96 + t44 * t377 + t709 * t99 + t576 * t62 + t794 * t297 + t708 * t246 + (-t584 * t207 + (t509 * t807 + t512 * t808) * t297) * t523, g(1) * t176 + g(2) * t174 + g(3) * t228 + t17 * t440 + t663 * t207 + t708 * t248 + t297 * t800 + t302 * t95 + t44 * t379 - t576 * t63 + t710 * t99, t166 * t715 + t323 * t50, -t164 * t715 - t166 * t714 - t322 * t50 - t323 * t51, t166 * t709 + t244 * t715 + t323 * t94 + t377 * t50, -t164 * t709 - t244 * t714 - t322 * t94 - t377 * t51, t244 * t709 + t377 * t94, t587 * t94 + t6 * t377 + t240 * t51 + t16 * t322 - g(1) * t123 - g(2) * t122 - g(3) * t161 + t714 * t55 + t709 * t29 + ((-qJD(5) * t241 - t797) * t522 + (-qJD(5) * t227 - t798) * t516) * t244 + t762 * t164, t240 * t50 + t16 * t323 - t713 * t94 - t5 * t377 - g(1) * (-t177 * t516 + t261 * t522) - g(2) * (-t175 * t516 + t260 * t522) - g(3) * (-t229 * t516 + t300 * t522) + t715 * t55 - t709 * t30 + t786 * t244 + t762 * t166, t111 * t717 + t22 * t263, -t109 * t717 - t111 * t716 - t22 * t262 - t23 * t263, t111 * t714 + t162 * t717 + t22 * t322 + t263 * t49, -t109 * t714 - t162 * t716 - t23 * t322 - t262 * t49, t162 * t714 + t322 * t49 (-t116 * t515 + t139 * t521) * t49 + t2 * t322 + t115 * t23 + t4 * t262 - g(1) * (t123 * t521 + t176 * t515) - g(2) * (t122 * t521 + t174 * t515) - g(3) * (t161 * t521 + t228 * t515) + t716 * t24 + (t515 * t620 - t521 * t621) * t162 - t714 * t599 + t770 * t109 -(t116 * t521 + t139 * t515) * t49 - t1 * t322 + t115 * t22 + t4 * t263 - g(1) * (-t123 * t515 + t176 * t521) - g(2) * (-t122 * t515 + t174 * t521) - g(3) * (-t161 * t515 + t228 * t521) + t717 * t24 + (t515 * t621 + t521 * t620) * t162 - t714 * t12 + t770 * t111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t347 * t348, -t347 ^ 2 + t348 ^ 2, -t347 * t600 + t253, t348 * t600 - t254, t535, -g(1) * t280 + g(2) * t278 - g(3) * t318 + t234 * t635 - t295 * t348 + t606, -g(1) * t282 + g(2) * t276 + g(3) * t319 + t233 * t600 - t295 * t347 + t546, t248 * t802 + t95 * t743, t246 * t271 + t248 * t270 + (-t517 * t96 + t523 * t95 + (-t246 * t523 - t248 * t517) * qJD(4)) * t509, t271 * t297 + t512 * t95 + (-t207 * t517 - t248 * t348 - t297 * t691) * t509, -t270 * t297 - t512 * t96 + (-t207 * t523 + t246 * t348 + t297 * t692) * t509, -t207 * t512 + t297 * t752, -t788 * t207 - t578 * t512 - t131 * t246 - t99 * t270 - g(1) * t181 - g(2) * t179 - g(3) * t224 + (t186 * t731 + t792) * t297 + (t99 * t692 - pkin(3) * t96 - t62 * t348 + (t272 * t297 - t44) * t523) * t509, t704 * t207 - t17 * t512 - t131 * t248 - t99 * t271 + g(1) * t180 + g(2) * t178 + g(3) * t223 + t801 * t297 + (-pkin(3) * t95 + t348 * t63 + t44 * t517 + t691 * t99) * t509, t166 * t707 + t445 * t50, -t164 * t707 - t166 * t706 - t444 * t50 - t445 * t51, -t166 * t793 + t244 * t707 + t445 * t94 - t50 * t741, t164 * t793 - t244 * t706 - t444 * t94 + t51 * t741, -t244 * t793 - t741 * t94, t583 * t94 - t6 * t741 + t434 * t51 + t16 * t444 - g(1) * t125 - g(2) * t124 - g(3) * t163 + t706 * t55 - t793 * t29 + ((-qJD(5) * t435 - t796) * t522 + (-qJD(5) * t436 - t795) * t516) * t244 + t760 * t164, t434 * t50 + t16 * t445 - t705 * t94 + t5 * t741 - g(1) * (-t181 * t516 - t282 * t742) - g(2) * (-t179 * t516 + t276 * t742) - g(3) * (-t224 * t516 + t319 * t742) + t707 * t55 + t793 * t30 + t787 * t244 + t760 * t166, t111 * t712 + t22 * t398, -t109 * t712 - t111 * t711 - t22 * t397 - t23 * t398, t111 * t706 + t162 * t712 + t22 * t444 + t398 * t49, -t109 * t706 - t162 * t711 - t23 * t444 - t397 * t49, t162 * t706 + t444 * t49 (t324 * t521 - t327 * t515) * t49 + t2 * t444 + t326 * t23 + t4 * t397 - g(1) * (t125 * t521 + t180 * t515) - g(2) * (t124 * t521 + t178 * t515) - g(3) * (t163 * t521 + t223 * t515) + t711 * t24 + (t515 * t609 - t521 * t608) * t162 - t706 * t599 + t761 * t109 -(t324 * t515 + t327 * t521) * t49 - t1 * t444 + t326 * t22 + t4 * t398 - g(1) * (-t125 * t515 + t180 * t521) - g(2) * (-t124 * t515 + t178 * t521) - g(3) * (-t163 * t515 + t223 * t521) + t712 * t24 + (t515 * t608 + t521 * t609) * t162 - t706 * t12 + t761 * t111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t246 * t248, -t246 ^ 2 + t248 ^ 2, -t246 * t297 + t95, -t297 * t248 - t96, -t207, -t248 * t99 - t297 * t63 + t558 - t578, t246 * t99 - t297 * t62 - t17 - t557, t166 * t633 + t50 * t516 (t50 - t755) * t522 + (-t51 - t754) * t516, -t166 * t248 + t244 * t633 + t516 * t94, -t244 ^ 2 * t516 + t164 * t248 + t522 * t94, -t244 * t248, -pkin(4) * t51 - t63 * t164 - t29 * t248 + (t62 * t244 + t567) * t516 + ((-t138 - t767) * t244 + t553) * t522, -pkin(4) * t50 - t63 * t166 + t758 * t244 + t30 * t248 + t567 * t522 + (t244 * t767 - t553) * t516, t22 * t516 * t521 + (-t516 * t686 + t601) * t111, t109 * t136 + t111 * t135 + (-t109 * t521 - t111 * t515) * t687 + (-t766 - t23 * t521 + (t109 * t515 - t111 * t521) * qJD(6)) * t516, -t22 * t522 + t601 * t162 + (t111 * t244 - t162 * t686 + t763) * t516, t23 * t522 + (-t515 * t687 + t135) * t162 + (-t109 * t244 - t162 * t685 - t764) * t516, t162 * t244 * t516 - t49 * t522, -t42 * t109 - t24 * t135 - t780 * t521 + t532 * t515 + (t24 * t690 - t2 + (qJD(5) * t109 - t764) * pkin(13) - t537 * t521) * t522 + (t24 * t685 + t4 * t515 - t244 * t599 + (t162 * t690 + t23) * pkin(13)) * t516, -t42 * t111 - t24 * t136 + t780 * t515 + t532 * t521 + (t24 * t688 + t1 + (qJD(5) * t111 - t763) * pkin(13) + t537 * t515) * t522 + (-t24 * t686 + t4 * t521 - t244 * t12 + (t162 * t688 + t22) * pkin(13)) * t516; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t166 * t164, -t164 ^ 2 + t166 ^ 2, t50 + t755, -t51 + t754, t94, -t166 * t55 + t244 * t30 - t559 + t6, g(1) * t105 + g(2) * t102 + g(3) * t129 + t164 * t55 + t244 * t29 - t5, t111 * t634 + t766 (t22 - t757) * t521 + (-t23 - t756) * t515, -t111 * t166 + t162 * t634 + t764, -t162 ^ 2 * t515 + t109 * t166 + t763, -t162 * t166, -pkin(5) * t23 - t30 * t109 + t166 * t599 + t547 * t515 - t521 * t781, -pkin(5) * t22 - t30 * t111 + t12 * t166 + t515 * t781 + t547 * t521; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111 * t109, -t109 ^ 2 + t111 ^ 2, t22 + t757, -t23 + t756, t49, t12 * t162 - t24 * t111 - g(1) * t59 + g(2) * t806 - g(3) * (-t129 * t515 + t187 * t521) + t2, -t599 * t162 + t24 * t109 + g(1) * t60 + g(2) * t805 - g(3) * (-t129 * t521 - t187 * t515) - t1;];
tau_reg  = t7;