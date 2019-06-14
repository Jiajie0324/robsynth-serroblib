% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RPRRRR12
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d1,d3,d4,d5,d6,theta2]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 07:02
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RPRRRR12_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR12_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR12_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRR12_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRR12_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6RPRRRR12_invdynJ_fixb_reg2_snew_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 06:45:32
% EndTime: 2019-05-06 06:47:04
% DurationCPUTime: 89.78s
% Computational Cost: add. (990610->1122), mult. (3234159->1866), div. (0->0), fcn. (2857198->18), ass. (0->704)
t422 = sin(pkin(14));
t418 = t422 ^ 2;
t424 = sin(pkin(7));
t425 = sin(pkin(6));
t428 = cos(pkin(7));
t426 = cos(pkin(14));
t429 = cos(pkin(6));
t741 = sin(qJ(1));
t742 = cos(qJ(1));
t527 = g(1) * t741 - g(2) * t742;
t487 = qJDD(1) * pkin(1) + t527;
t482 = t429 * t487;
t651 = qJDD(1) * t429;
t639 = pkin(2) * t651;
t465 = t426 * t482 + t639;
t528 = g(1) * t742 + g(2) * t741;
t652 = qJDD(1) * t425;
t483 = qJ(2) * t652 - t528;
t677 = t425 * t426;
t449 = -g(3) * t677 - t422 * t483 + t465;
t629 = t429 * g(3) - qJDD(2);
t632 = t426 * t652;
t457 = -pkin(2) * t632 - t425 * t487 - t629;
t446 = t424 * t449 - t428 * t457;
t421 = t429 ^ 2;
t735 = pkin(10) * t424;
t547 = t422 * pkin(1) + t421 * t735;
t509 = t547 * qJD(1);
t690 = t422 * t424;
t740 = pkin(2) * t426;
t545 = -pkin(10) * t690 - t740;
t420 = t426 ^ 2;
t734 = pkin(10) * t428;
t625 = -t420 * t734 - qJ(2);
t664 = qJD(1) * t429;
t665 = qJD(1) * t425;
t682 = t424 * t426;
t688 = t422 * t428;
t774 = -0.2e1 * t422;
t772 = qJD(2) * t774;
t342 = (t424 * t509 + t425 * (t664 * ((qJ(2) + 0.2e1 * t734) * t682 - pkin(2) * t688) - (t545 * t690 + t428 * (-t418 * t734 + t625)) * t665 + t424 * t772)) * qJD(1) + t446;
t430 = sin(qJ(6));
t437 = cos(qJ(3));
t433 = sin(qJ(3));
t669 = t428 * t433;
t640 = t426 * t669;
t537 = t422 * t437 + t640;
t679 = t424 * t433;
t642 = t429 * t679;
t475 = t425 * t537 + t642;
t395 = t475 * qJD(1);
t432 = sin(qJ(4));
t436 = cos(qJ(4));
t636 = t426 * t665;
t401 = -t424 * t636 + t428 * t664 + qJD(3);
t423 = sin(pkin(8));
t675 = t426 * t428;
t680 = t424 * t429;
t536 = t425 * t675 + t680;
t686 = t422 * t433;
t394 = qJD(1) * t437 * t536 - t665 * t686;
t427 = cos(pkin(8));
t673 = t427 * t394;
t549 = t401 * t423 + t673;
t370 = t395 * t436 + t432 * t549;
t384 = -t423 * t394 + t401 * t427 + qJD(4);
t431 = sin(qJ(5));
t435 = cos(qJ(5));
t353 = t370 * t435 + t384 * t431;
t434 = cos(qJ(6));
t671 = t427 * t436;
t683 = t423 * t436;
t694 = t395 * t432;
t368 = -t394 * t671 - t401 * t683 + t694;
t543 = qJD(5) + t368;
t331 = t353 * t430 - t434 * t543;
t333 = t434 * t353 + t430 * t543;
t287 = t333 * t331;
t471 = t475 * qJDD(1);
t661 = t394 * qJD(3);
t463 = t471 + t661;
t535 = t424 * t677 - t428 * t429;
t485 = -qJDD(1) * t535 + qJDD(3);
t633 = t422 * t652;
t668 = t428 * t437;
t678 = t424 * t437;
t525 = t433 * t633 - t632 * t668 - t651 * t678;
t486 = qJD(3) * t395 + t525;
t753 = t423 * t485 - t427 * t486;
t766 = t753 * t432 + t436 * t463;
t336 = -t368 * qJD(4) + t766;
t374 = t423 * t486 + t427 * t485 + qJDD(4);
t627 = t431 * t336 - t435 * t374;
t289 = -t353 * qJD(5) - t627;
t288 = qJDD(6) - t289;
t759 = -t287 + t288;
t771 = t430 * t759;
t351 = t370 * t431 - t435 * t384;
t318 = t353 * t351;
t456 = t463 * t432 - t436 * t753;
t455 = t370 * qJD(4) + t456;
t335 = qJDD(5) + t455;
t758 = -t318 + t335;
t770 = t431 * t758;
t769 = t434 * t759;
t768 = t435 * t758;
t730 = t425 * g(3);
t470 = t482 - t730;
t474 = t426 * t483;
t517 = t545 * t425;
t622 = -t426 * pkin(1) - pkin(2) * t421;
t631 = qJ(2) + t734;
t743 = 0.2e1 * qJD(2);
t649 = t426 * t743;
t687 = t422 * t429;
t720 = pkin(10) * qJDD(1);
t444 = t474 + t470 * t422 + t536 * t720 + (t622 * qJD(1) + (t649 + (t426 * t517 + t631 * t687) * qJD(1)) * t425) * qJD(1);
t479 = t485 * pkin(3);
t529 = t401 * t549;
t733 = pkin(11) * t423;
t544 = -pkin(3) * t394 - t395 * t733;
t732 = pkin(11) * t427;
t533 = -pkin(1) + t545;
t620 = t631 * t426;
t744 = qJD(1) ^ 2;
t660 = t425 * t744;
t674 = t426 * t429;
t719 = qJ(2) * t425;
t756 = -t418 - t420;
t755 = t428 * (t639 + t470 * t426 + (-t631 * t652 + t528) * t422 + (t509 + (t772 + (-t422 * t517 + t429 * t620) * qJD(1)) * t425) * qJD(1)) + t424 * ((qJDD(1) * t533 - t527) * t425 + (pkin(2) * t687 - t719 + (t425 * t428 * t756 - t424 * t674) * pkin(10)) * t660 - t629);
t440 = pkin(11) * t529 - t395 * t544 - t433 * t444 + t437 * t755 - t463 * t732 + t479;
t657 = qJD(3) + t401;
t358 = t395 * t657 + t525;
t393 = t395 ^ 2;
t750 = t423 * t657 + t673;
t442 = t358 * pkin(3) + (-t393 * t427 - t394 * t750 - t423 * t471) * pkin(11) - t342;
t767 = t423 * t442 + t427 * t440;
t534 = t543 ^ 2;
t698 = t370 * t368;
t464 = t374 - t698;
t764 = t432 * t464;
t695 = t394 * t395;
t473 = t485 + t695;
t763 = t433 * t473;
t761 = t436 * t464;
t760 = t437 * t473;
t558 = -t435 * t336 - t431 * t374;
t290 = -t351 * qJD(5) - t558;
t339 = t543 * t351;
t269 = t290 - t339;
t357 = t384 * t368;
t307 = -t357 + t336;
t392 = t394 ^ 2;
t371 = -t392 - t393;
t400 = t401 ^ 2;
t757 = t400 + t393;
t419 = t425 ^ 2;
t500 = t536 * pkin(10);
t754 = t428 * (t429 * t500 + t674 * t719) + t424 * (-qJ(2) * t419 - t500 * t677);
t676 = t425 * t437;
t752 = qJDD(1) * (t422 * t676 + t425 * t640 + t642);
t348 = qJD(6) + t351;
t628 = t290 * t430 - t434 * t335;
t215 = (qJD(6) - t348) * t333 + t628;
t638 = -pkin(1) - t740;
t746 = t424 ^ 2;
t751 = t422 * (-pkin(10) * t746 - t428 * t631) + t424 * t638;
t329 = t331 ^ 2;
t330 = t333 ^ 2;
t347 = t348 ^ 2;
t349 = t351 ^ 2;
t350 = t353 ^ 2;
t366 = t368 ^ 2;
t367 = t370 ^ 2;
t747 = t384 ^ 2;
t745 = t427 ^ 2;
t739 = pkin(2) * t420;
t738 = pkin(4) * t432;
t737 = pkin(4) * t436;
t736 = pkin(5) * t431;
t344 = pkin(4) * t368 - pkin(12) * t370;
t279 = t437 * t444 + t394 * t544 - t401 * (pkin(3) * t401 - t395 * t732) + t755 * t433 + t753 * pkin(11);
t666 = t436 * t279;
t178 = -t747 * pkin(4) + t374 * pkin(12) - t368 * t344 + t432 * t767 + t666;
t696 = t384 * t370;
t438 = -t423 * t440 + t427 * t442 - t307 * pkin(12) + (t455 + t696) * pkin(4);
t126 = t178 * t431 - t435 * t438;
t316 = pkin(5) * t351 - pkin(13) * t353;
t111 = -t335 * pkin(5) - pkin(13) * t534 + t316 * t353 + t126;
t127 = t435 * t178 + t431 * t438;
t112 = -pkin(5) * t534 + t335 * pkin(13) - t351 * t316 + t127;
t193 = t432 * t279 - t436 * t767;
t177 = -t374 * pkin(4) - t747 * pkin(12) + t370 * t344 + t193;
t508 = t543 * t353;
t131 = -t269 * pkin(13) + (-t289 + t508) * pkin(5) + t177;
t78 = t112 * t430 - t434 * t131;
t79 = t112 * t434 + t131 * t430;
t50 = t430 * t78 + t434 * t79;
t35 = -t111 * t435 + t431 * t50;
t36 = t111 * t431 + t435 * t50;
t49 = t430 * t79 - t434 * t78;
t614 = t36 * t432 - t436 * t49;
t15 = t35 * t427 + t423 * t614;
t16 = -t35 * t423 + t427 * t614;
t26 = t36 * t436 + t432 * t49;
t615 = t16 * t437 + t26 * t433;
t5 = -t424 * t15 + t428 * t615;
t731 = t422 * t5;
t729 = pkin(1) * qJD(1);
t81 = t126 * t431 + t435 * t127;
t606 = -t177 * t436 + t432 * t81;
t80 = -t126 * t435 + t127 * t431;
t46 = t423 * t606 + t427 * t80;
t47 = -t423 * t80 + t427 * t606;
t64 = t177 * t432 + t436 * t81;
t613 = t433 * t64 + t437 * t47;
t22 = -t424 * t46 + t428 * t613;
t728 = t22 * t422;
t568 = -t290 * t434 - t335 * t430;
t232 = -qJD(6) * t331 - t568;
t299 = t348 * t331;
t219 = t232 + t299;
t162 = -t215 * t434 + t219 * t430;
t260 = t329 + t330;
t132 = t162 * t431 + t260 * t435;
t133 = t162 * t435 - t260 * t431;
t160 = -t215 * t430 - t219 * t434;
t602 = t133 * t432 - t160 * t436;
t70 = -t132 * t423 + t427 * t602;
t98 = t133 * t436 + t160 * t432;
t612 = t433 * t98 + t437 * t70;
t69 = t132 * t427 + t423 * t602;
t32 = -t424 * t69 + t428 * t612;
t727 = t32 * t422;
t273 = -t347 - t329;
t196 = t273 * t434 - t771;
t654 = qJD(6) + t348;
t216 = -t333 * t654 - t628;
t147 = t196 * t435 - t216 * t431;
t195 = t273 * t430 + t769;
t113 = t147 * t436 + t195 * t432;
t146 = t196 * t431 + t216 * t435;
t597 = t147 * t432 - t195 * t436;
t86 = -t146 * t423 + t427 * t597;
t610 = t113 * t433 + t437 * t86;
t85 = t146 * t427 + t423 * t597;
t40 = -t424 * t85 + t428 * t610;
t726 = t40 * t422;
t280 = -t330 - t347;
t234 = t287 + t288;
t708 = t234 * t434;
t199 = -t280 * t430 - t708;
t220 = t331 * t654 + t568;
t150 = t199 * t435 - t220 * t431;
t709 = t234 * t430;
t198 = t280 * t434 - t709;
t114 = t150 * t436 + t198 * t432;
t149 = t199 * t431 + t220 * t435;
t596 = t150 * t432 - t198 * t436;
t88 = -t149 * t423 + t427 * t596;
t609 = t114 * t433 + t437 * t88;
t87 = t149 * t427 + t423 * t596;
t44 = -t424 * t87 + t428 * t609;
t725 = t422 * t44;
t689 = t422 * t425;
t443 = -t433 * (-g(3) * t689 + t422 * t482 + t474) + t449 * t668 + t457 * t678;
t540 = pkin(10) * t675 + qJ(2) * t426;
t546 = pkin(2) * t422 - pkin(10) * t682;
t451 = -t433 * (pkin(10) * t688 + qJ(2) * t422) + t540 * t668 + t546 * t678;
t621 = t422 * (-t428 ^ 2 - t746);
t461 = (-t433 * t536 + t621 * t676) * t720;
t467 = -t424 * t540 + t428 * t546;
t468 = -t433 * t622 + t547 * t668;
t484 = t433 * t739 + t625 * t678;
t495 = -0.2e1 * t422 * t668 - 0.2e1 * t426 * t433;
t518 = t424 * t547;
t532 = pkin(2) * t668 + pkin(10) * t679;
t541 = t428 * t625;
t548 = pkin(10) * t621;
t681 = t424 * t427;
t226 = t423 * t443 + t427 * t446 + (-t358 * t427 + t423 * t473) * pkin(3) + (-t745 * t371 + (0.2e1 * t401 * t673 + t423 * t757) * t423) * pkin(11) + t423 * t461 + ((t423 * t468 + t427 * t518) * qJD(1) + ((t423 * t484 - t427 * t541 + (-t427 * t548 + (pkin(2) * t681 + t423 * t532) * t426) * t422) * t665 + (t423 * t495 + t681 * t774) * qJD(2) + (t423 * t451 - t427 * t467) * t664) * t425) * qJD(1);
t672 = t427 * t432;
t685 = t423 * t424;
t194 = t750 * pkin(3) * t694 + t461 * t672 + t666 + (t427 * (t479 + t443) + t423 * (pkin(3) * t525 - t446) + (t427 * (-t427 * t661 + t529) - t745 * t752 + (-t394 * t549 + (-t661 - t752) * t423) * t423) * pkin(11) + ((-t423 * t518 + t427 * t468) * qJD(1) + ((t427 * t484 + t423 * t541 + (t423 * t548 + (-pkin(2) * t685 + t427 * t532) * t426) * t422) * t665 + (0.2e1 * t422 * t685 + t427 * t495) * qJD(2) + (t423 * t467 + t427 * t451) * t664) * t425) * qJD(1)) * t432;
t585 = -t193 * t436 + t194 * t432;
t115 = -t226 * t427 + t423 * t585;
t116 = t226 * t423 + t427 * t585;
t138 = t193 * t432 + t194 * t436;
t603 = t116 * t437 + t138 * t433;
t60 = -t424 * t115 + t428 * t603;
t724 = t422 * t60;
t266 = -t353 * t368 + t627;
t270 = t290 + t339;
t203 = -t266 * t431 - t270 * t435;
t205 = -t266 * t435 + t270 * t431;
t294 = t349 + t350;
t583 = t205 * t432 + t294 * t436;
t136 = t203 * t427 + t423 * t583;
t137 = -t203 * t423 + t427 * t583;
t179 = t205 * t436 - t294 * t432;
t600 = t137 * t437 + t179 * t433;
t76 = -t424 * t136 + t428 * t600;
t723 = t422 * t76;
t302 = -t534 - t349;
t238 = t302 * t431 + t768;
t239 = t302 * t435 - t770;
t542 = 0.2e1 * qJD(5) + t368;
t267 = -t353 * t542 - t627;
t578 = t239 * t432 + t267 * t436;
t163 = t238 * t427 + t423 * t578;
t164 = -t238 * t423 + t427 * t578;
t192 = t239 * t436 - t267 * t432;
t593 = t164 * t437 + t192 * t433;
t94 = -t424 * t163 + t428 * t593;
t722 = t422 * t94;
t311 = -t350 - t534;
t282 = t318 + t335;
t707 = t282 * t431;
t242 = t311 * t435 - t707;
t706 = t282 * t435;
t243 = -t311 * t431 - t706;
t271 = t351 * t542 + t558;
t576 = t243 * t432 + t271 * t436;
t165 = t242 * t427 + t423 * t576;
t166 = -t242 * t423 + t427 * t576;
t197 = t243 * t436 - t271 * t432;
t592 = t166 * t437 + t197 * t433;
t96 = -t424 * t165 + t428 * t592;
t721 = t422 * t96;
t718 = t111 * t430;
t717 = t111 * t434;
t322 = -t366 - t367;
t308 = t357 + t336;
t452 = (-qJD(4) + t384) * t370 - t456;
t565 = -t308 * t436 + t432 * t452;
t227 = t322 * t427 + t423 * t565;
t228 = -t322 * t423 + t427 * t565;
t259 = t308 * t432 + t436 * t452;
t580 = t228 * t437 + t259 * t433;
t152 = -t424 * t227 + t428 * t580;
t716 = t152 * t422;
t656 = qJD(4) + t384;
t303 = t370 * t656 + t456;
t340 = -t747 - t366;
t559 = t340 * t432 + t761;
t240 = t303 * t427 + t423 * t559;
t241 = -t303 * t423 + t427 * t559;
t284 = t340 * t436 - t764;
t577 = t241 * t437 + t284 * t433;
t172 = -t424 * t240 + t428 * t577;
t715 = t172 * t422;
t306 = -t368 * t656 + t766;
t343 = -t367 - t747;
t323 = -t374 - t698;
t704 = t323 * t432;
t562 = t343 * t436 + t704;
t246 = t306 * t427 + t423 * t562;
t247 = -t306 * t423 + t427 * t562;
t703 = t323 * t436;
t293 = -t343 * t432 + t703;
t575 = t247 * t437 + t293 * t433;
t174 = -t424 * t246 + t428 * t575;
t714 = t174 * t422;
t713 = t177 * t431;
t712 = t177 * t435;
t711 = t226 * t432;
t710 = t226 * t436;
t389 = t401 * t394;
t363 = -t389 + t463;
t478 = (-qJD(3) + t401) * t395 - t525;
t556 = -t363 * t437 + t433 * t478;
t315 = -t424 * t371 + t428 * t556;
t705 = t315 * t422;
t702 = t342 * t433;
t701 = t342 * t437;
t700 = t348 * t430;
t699 = t348 * t434;
t376 = -t485 + t695;
t697 = t376 * t437;
t693 = t395 * t433;
t692 = t418 * t419;
t691 = t419 * t420;
t684 = t423 * t432;
t667 = t433 * t376;
t662 = qJD(2) * t428;
t659 = t426 * t744;
t658 = t429 * t744;
t653 = qJDD(1) * t419;
t648 = t428 * t729;
t647 = t431 * t287;
t646 = t435 * t287;
t645 = t432 * t318;
t644 = t436 * t318;
t637 = -pkin(5) * t435 - pkin(4);
t634 = t425 * t658;
t626 = t425 * t649;
t624 = -pkin(5) * t111 + pkin(13) * t50;
t375 = -t400 - t392;
t346 = t375 * t437 - t763;
t619 = pkin(10) * t346 + t701;
t354 = t433 * t757 + t697;
t618 = pkin(10) * t354 - t702;
t617 = pkin(11) * t284 + t710;
t616 = pkin(11) * t293 - t711;
t218 = t232 - t299;
t161 = t216 * t434 - t218 * t430;
t286 = t330 - t329;
t142 = t161 * t435 + t286 * t431;
t159 = t216 * t430 + t218 * t434;
t100 = t142 * t436 + t159 * t432;
t141 = t161 * t431 - t286 * t435;
t599 = t142 * t432 - t159 * t436;
t73 = -t141 * t423 + t427 * t599;
t611 = t100 * t433 + t437 * t73;
t298 = -t330 + t347;
t213 = -t298 * t430 + t769;
t157 = t213 * t435 + t219 * t431;
t211 = t298 * t434 + t771;
t120 = t157 * t436 + t211 * t432;
t155 = t213 * t431 - t219 * t435;
t595 = t157 * t432 - t211 * t436;
t91 = -t155 * t423 + t427 * t595;
t608 = t120 * t433 + t437 * t91;
t297 = t329 - t347;
t214 = t297 * t434 - t709;
t158 = t214 * t435 - t215 * t431;
t212 = t297 * t430 + t708;
t121 = t158 * t436 + t212 * t432;
t156 = t214 * t431 + t215 * t435;
t594 = t158 * t432 - t212 * t436;
t92 = -t156 * t423 + t427 * t594;
t607 = t121 * t433 + t437 * t92;
t231 = -qJD(6) * t333 - t628;
t208 = -t231 * t430 + t331 * t699;
t180 = t208 * t431 + t646;
t182 = t208 * t435 - t647;
t207 = -t231 * t434 - t331 * t700;
t589 = t182 * t432 + t207 * t436;
t107 = -t180 * t423 + t427 * t589;
t139 = t182 * t436 - t207 * t432;
t605 = t107 * t437 + t139 * t433;
t210 = t232 * t434 - t333 * t700;
t181 = t210 * t431 - t646;
t183 = t210 * t435 + t647;
t209 = t232 * t430 + t333 * t699;
t588 = t183 * t432 - t209 * t436;
t108 = -t181 * t423 + t427 * t588;
t140 = t183 * t436 + t209 * t432;
t604 = t108 * t437 + t140 * t433;
t253 = (-t331 * t434 + t333 * t430) * t348;
t222 = t253 * t431 - t288 * t435;
t223 = t253 * t435 + t288 * t431;
t252 = (-t331 * t430 - t333 * t434) * t348;
t582 = t223 * t432 - t252 * t436;
t135 = -t222 * t423 + t427 * t582;
t175 = t223 * t436 + t252 * t432;
t601 = t135 * t437 + t175 * t433;
t202 = t267 * t431 + t269 * t435;
t204 = t267 * t435 - t269 * t431;
t317 = t350 - t349;
t584 = t204 * t432 - t317 * t436;
t144 = -t202 * t423 + t427 * t584;
t191 = t204 * t436 + t317 * t432;
t598 = t144 * t437 + t191 * t433;
t338 = -t350 + t534;
t254 = t338 * t435 + t770;
t256 = -t338 * t431 + t768;
t572 = t256 * t432 - t270 * t436;
t169 = -t254 * t423 + t427 * t572;
t200 = t256 * t436 + t270 * t432;
t591 = t169 * t437 + t200 * t433;
t337 = t349 - t534;
t255 = t337 * t431 + t706;
t257 = t337 * t435 - t707;
t571 = t257 * t432 + t266 * t436;
t170 = -t255 * t423 + t427 * t571;
t201 = t257 * t436 - t266 * t432;
t590 = t170 * t437 + t201 * t433;
t493 = t431 * t339;
t262 = t435 * t289 + t493;
t491 = t435 * t339;
t263 = -t431 * t289 + t491;
t539 = t263 * t432 + t644;
t189 = -t262 * t423 + t427 * t539;
t229 = t263 * t436 - t645;
t587 = t189 * t437 + t229 * t433;
t490 = t435 * t508;
t264 = t431 * t290 + t490;
t492 = t431 * t508;
t265 = t435 * t290 - t492;
t538 = t265 * t432 - t644;
t190 = -t264 * t423 + t427 * t538;
t230 = t265 * t436 + t645;
t586 = t190 * t437 + t230 * t433;
t291 = -t493 - t490;
t292 = -t491 + t492;
t567 = t292 * t432 - t335 * t436;
t225 = -t291 * t423 + t427 * t567;
t261 = t292 * t436 + t335 * t432;
t581 = t225 * t437 + t261 * t433;
t345 = t367 - t366;
t566 = -t303 * t432 + t307 * t436;
t237 = -t345 * t423 + t427 * t566;
t258 = -t303 * t436 - t307 * t432;
t579 = t237 * t437 + t258 * t433;
t356 = -t367 + t747;
t560 = t356 * t436 + t764;
t250 = -t308 * t423 + t427 * t560;
t295 = -t356 * t432 + t761;
t574 = t250 * t437 + t295 * t433;
t355 = t366 - t747;
t561 = t355 * t432 - t703;
t251 = -t423 * t452 + t427 * t561;
t296 = t355 * t436 + t704;
t573 = t251 * t437 + t296 * t433;
t454 = t436 * t455;
t276 = -t427 * t454 + (t370 * t423 + t384 * t672) * t368;
t300 = t357 * t436 + t432 * t455;
t570 = t276 * t437 + t300 * t433;
t278 = t336 * t672 + (-t368 * t423 + t384 * t671) * t370;
t301 = t336 * t436 - t432 * t696;
t569 = t278 * t437 + t301 * t433;
t530 = t384 * (-t368 * t432 - t370 * t436);
t310 = -t374 * t423 + t427 * t530;
t319 = (-t368 * t436 + t370 * t432) * t384;
t564 = t310 * t437 + t319 * t433;
t448 = t428 * (t422 * t528 + t465) - t424 * t629;
t450 = -t426 * t528 + (t422 * t487 + t424 * t720) * t429;
t489 = t424 * t527;
t498 = -t419 * t739 + t622;
t312 = t433 * t450 - t448 * t437 + (t437 * t489 + (t426 * t668 - t686) * g(3) + (t433 * t620 - t437 * t751) * qJDD(1)) * t425 + (t433 * t626 + (t433 * t498 - t437 * t754) * qJD(1) + (-t437 * t648 + (0.2e1 * t437 * t662 - t532 * t636 + (-pkin(2) * t678 + t433 * t631) * t664) * t425) * t422) * qJD(1);
t313 = t437 * t450 + t448 * t433 + (-t433 * t489 - t537 * g(3) + (t433 * t751 + t437 * t620) * qJDD(1)) * t425 + (t437 * t626 + (t433 * t754 + t437 * t498) * qJD(1) + (t433 * t648 + (-0.2e1 * t433 * t662 + (pkin(2) * t669 - pkin(10) * t678) * t636 + (pkin(2) * t679 + t437 * t631) * t664) * t425) * t422) * qJD(1);
t563 = t312 * t437 - t433 * t313;
t272 = t433 * t312 + t313 * t437;
t362 = t389 + t463;
t557 = -t358 * t433 + t362 * t437;
t555 = t375 * t433 + t760;
t554 = -t437 * t757 + t667;
t387 = t392 - t400;
t553 = t387 * t433 - t697;
t388 = -t393 + t400;
t552 = t388 * t437 + t763;
t460 = (t425 * t743 - t729) * qJD(1) + t483;
t472 = qJ(2) * t660 + t487;
t462 = t429 * t472 - t730;
t385 = t422 * t460 - t426 * t462;
t386 = t422 * t462 + t426 * t460;
t551 = t422 * t385 + t426 * t386;
t550 = t394 * t433 - t395 * t437;
t17 = -pkin(12) * t35 + (-pkin(13) * t435 + t736) * t49;
t25 = -pkin(4) * t35 - t624;
t520 = pkin(11) * t26 + t17 * t432 + t25 * t436;
t9 = pkin(12) * t36 + (-pkin(13) * t431 + t637) * t49;
t2 = -pkin(3) * t15 - t423 * t9 + t427 * t520;
t3 = t17 * t436 - t25 * t432 + (-t15 * t423 - t16 * t427) * pkin(11);
t6 = -t433 * t16 + t26 * t437;
t531 = pkin(10) * t6 + t2 * t437 + t3 * t433;
t41 = -pkin(13) * t160 - t49;
t33 = -pkin(12) * t132 + t160 * t736 + t41 * t435;
t497 = pkin(5) * t260 + pkin(13) * t162 + t50;
t34 = -pkin(4) * t132 - t497;
t10 = t33 * t436 - t34 * t432 + (-t423 * t69 - t427 * t70) * pkin(11);
t51 = -t433 * t70 + t437 * t98;
t27 = pkin(12) * t133 + t160 * t637 + t41 * t431;
t519 = pkin(11) * t98 + t33 * t432 + t34 * t436;
t8 = -pkin(3) * t69 - t27 * t423 + t427 * t519;
t526 = pkin(10) * t51 + t10 * t433 + t437 * t8;
t66 = -pkin(5) * t195 + t78;
t97 = -pkin(13) * t195 + t718;
t37 = -pkin(4) * t195 + pkin(12) * t147 + t431 * t97 + t435 * t66;
t42 = -pkin(12) * t146 - t431 * t66 + t435 * t97;
t516 = pkin(5) * t216 + pkin(13) * t196 - t717;
t62 = -pkin(4) * t146 - t516;
t511 = pkin(11) * t113 + t42 * t432 + t436 * t62;
t12 = -pkin(3) * t85 - t37 * t423 + t427 * t511;
t23 = t42 * t436 - t432 * t62 + (-t423 * t85 - t427 * t86) * pkin(11);
t58 = t113 * t437 - t433 * t86;
t524 = pkin(10) * t58 + t12 * t437 + t23 * t433;
t67 = -pkin(5) * t198 + t79;
t99 = -pkin(13) * t198 + t717;
t38 = -pkin(4) * t198 + pkin(12) * t150 + t431 * t99 + t435 * t67;
t45 = -pkin(12) * t149 - t431 * t67 + t435 * t99;
t515 = pkin(5) * t220 + pkin(13) * t199 + t718;
t63 = -pkin(4) * t149 - t515;
t510 = pkin(11) * t114 + t432 * t45 + t436 * t63;
t14 = -pkin(3) * t87 - t38 * t423 + t427 * t510;
t24 = -t432 * t63 + t436 * t45 + (-t423 * t87 - t427 * t88) * pkin(11);
t61 = t114 * t437 - t433 * t88;
t523 = pkin(10) * t61 + t14 * t437 + t24 * t433;
t488 = pkin(11) * t64 + (-pkin(12) * t432 - t737) * t80;
t65 = -pkin(4) * t177 + pkin(12) * t81;
t19 = -pkin(3) * t46 - t423 * t65 + t427 * t488;
t20 = (-pkin(12) * t436 + t738) * t80 + (-t423 * t46 - t427 * t47) * pkin(11);
t28 = -t433 * t47 + t437 * t64;
t522 = pkin(10) * t28 + t19 * t437 + t20 * t433;
t74 = (-t115 * t423 - t116 * t427) * pkin(11);
t82 = -t433 * t116 + t138 * t437;
t83 = -pkin(3) * t115 + t138 * t732;
t521 = pkin(10) * t82 + t433 * t74 + t437 * t83;
t102 = -t433 * t137 + t179 * t437;
t71 = -pkin(12) * t203 - t80;
t496 = pkin(11) * t179 - t203 * t737 + t432 * t71;
t68 = pkin(4) * t294 + pkin(12) * t205 + t81;
t30 = -pkin(3) * t136 - t423 * t68 + t427 * t496;
t48 = t203 * t738 + t436 * t71 + (-t136 * t423 - t137 * t427) * pkin(11);
t514 = pkin(10) * t102 + t30 * t437 + t433 * t48;
t117 = -t433 * t164 + t192 * t437;
t128 = pkin(4) * t267 + pkin(12) * t239 - t712;
t109 = -pkin(4) * t238 + t126;
t145 = -pkin(12) * t238 + t713;
t503 = pkin(11) * t192 + t109 * t436 + t145 * t432;
t53 = -pkin(3) * t163 - t128 * t423 + t427 * t503;
t56 = -t109 * t432 + t145 * t436 + (-t163 * t423 - t164 * t427) * pkin(11);
t513 = pkin(10) * t117 + t433 * t56 + t437 * t53;
t122 = -t433 * t166 + t197 * t437;
t129 = pkin(4) * t271 + pkin(12) * t243 + t713;
t110 = -pkin(4) * t242 + t127;
t148 = -pkin(12) * t242 + t712;
t502 = pkin(11) * t197 + t110 * t436 + t148 * t432;
t55 = -pkin(3) * t165 - t129 * t423 + t427 * t502;
t57 = -t110 * t432 + t148 * t436 + (-t165 * t423 - t166 * t427) * pkin(11);
t512 = pkin(10) * t122 + t433 * t57 + t437 * t55;
t101 = (-t227 * t423 - t228 * t427) * pkin(11) - t585;
t501 = pkin(11) * t259 + t138;
t104 = -pkin(3) * t227 + t427 * t501;
t186 = -t433 * t228 + t259 * t437;
t507 = pkin(10) * t186 + t101 * t433 + t104 * t437;
t119 = -pkin(3) * t240 + t193 * t423 + t427 * t617;
t153 = -t711 + (-t240 * t423 - t241 * t427) * pkin(11);
t206 = -t433 * t241 + t284 * t437;
t506 = pkin(10) * t206 + t119 * t437 + t153 * t433;
t124 = -pkin(3) * t246 + t194 * t423 + t427 * t616;
t154 = -t710 + (-t246 * t423 - t247 * t427) * pkin(11);
t221 = -t433 * t247 + t293 * t437;
t505 = pkin(10) * t221 + t124 * t437 + t154 * t433;
t341 = t433 * t363 + t437 * t478;
t504 = pkin(10) * t341 + t272;
t480 = t437 * t486;
t458 = t433 * t463;
t415 = t426 * t634;
t414 = t422 * t634;
t413 = t419 * t422 * t659;
t410 = (-t421 - t691) * t744;
t409 = (-t421 - t692) * t744;
t408 = t756 * t419 * t744;
t407 = -t413 + t651;
t406 = t413 + t651;
t405 = -t414 + t632;
t404 = t414 + t632;
t403 = -t415 + t633;
t402 = t415 + t633;
t396 = t425 * t472 + t629;
t381 = t393 - t392;
t361 = t394 * t657 + t471;
t327 = -t424 * t361 + t428 * t554;
t326 = t428 * t361 + t424 * t554;
t321 = -t424 * t358 + t428 * t555;
t320 = t428 * t358 + t424 * t555;
t314 = t428 * t371 + t424 * t556;
t309 = t374 * t427 + t423 * t530;
t277 = t336 * t684 + (t368 * t427 + t384 * t683) * t370;
t275 = -t423 * t454 + (-t370 * t427 + t384 * t684) * t368;
t249 = t423 * t561 + t427 * t452;
t248 = t308 * t427 + t423 * t560;
t245 = t424 * t342 - t428 * t563;
t244 = -t428 * t342 - t424 * t563;
t236 = t345 * t427 + t423 * t566;
t224 = t291 * t427 + t423 * t567;
t188 = t264 * t427 + t423 * t538;
t187 = t262 * t427 + t423 * t539;
t173 = t428 * t246 + t424 * t575;
t171 = t428 * t240 + t424 * t577;
t168 = t255 * t427 + t423 * t571;
t167 = t254 * t427 + t423 * t572;
t151 = t428 * t227 + t424 * t580;
t143 = t202 * t427 + t423 * t584;
t134 = t222 * t427 + t423 * t582;
t123 = pkin(3) * t247 - t194 * t427 + t423 * t616;
t118 = pkin(3) * t241 - t193 * t427 + t423 * t617;
t106 = t181 * t427 + t423 * t588;
t105 = t180 * t427 + t423 * t589;
t103 = pkin(3) * t228 + t423 * t501;
t95 = t428 * t165 + t424 * t592;
t93 = t428 * t163 + t424 * t593;
t90 = t156 * t427 + t423 * t594;
t89 = t155 * t427 + t423 * t595;
t84 = pkin(3) * t116 + t138 * t733;
t75 = t428 * t136 + t424 * t600;
t72 = t141 * t427 + t423 * t599;
t59 = t428 * t115 + t424 * t603;
t54 = pkin(3) * t166 + t129 * t427 + t423 * t502;
t52 = pkin(3) * t164 + t128 * t427 + t423 * t503;
t43 = t424 * t609 + t428 * t87;
t39 = t424 * t610 + t428 * t85;
t31 = t424 * t612 + t428 * t69;
t29 = pkin(3) * t137 + t423 * t496 + t427 * t68;
t21 = t424 * t613 + t428 * t46;
t18 = pkin(3) * t47 + t423 * t488 + t427 * t65;
t13 = pkin(3) * t88 + t38 * t427 + t423 * t510;
t11 = pkin(3) * t86 + t37 * t427 + t423 * t511;
t7 = pkin(3) * t70 + t27 * t427 + t423 * t519;
t4 = t428 * t15 + t424 * t615;
t1 = pkin(3) * t16 + t423 * t520 + t427 * t9;
t77 = [0, 0, 0, 0, 0, qJDD(1), t527, t528, 0, 0, t418 * t653, (t402 * t426 + t405 * t422) * t425 + (t418 - t420) * t419 * t658, t406 * t689 + t429 * t403 + t425 * (t421 - t692) * t659, t420 * t653, t407 * t677 + t429 * t404 + t422 * (-t421 + t691) * t660, t421 * qJDD(1), (-t385 + pkin(1) * (t406 * t426 + t410 * t422)) * t429 + (t426 * t396 + pkin(1) * t405 + qJ(2) * (-t406 * t422 + t410 * t426)) * t425, (-t386 + pkin(1) * (-t407 * t422 + t409 * t426)) * t429 + (-t422 * t396 - pkin(1) * t402 + qJ(2) * (-t407 * t426 - t409 * t422)) * t425, pkin(1) * (-t403 * t426 + t404 * t422) * t429 + (-pkin(1) * t408 + qJ(2) * (t403 * t422 + t404 * t426) + t551) * t425, pkin(1) * (t396 * t425 + (-t385 * t426 + t386 * t422) * t429) + t551 * t719, (-t401 * t693 + t437 * t463) * t689 + (t428 * t458 + (t394 * t424 + t401 * t668) * t395) * t677 + t429 * (t424 * t458 + (-t394 * t428 + t401 * t678) * t395), t429 * (t428 * t381 + t424 * t557) + (t422 * (-t358 * t437 - t433 * t362) + t426 * (-t424 * t381 + t428 * t557)) * t425, t429 * (t428 * t363 + t424 * t552) + (t422 * (-t433 * t388 + t760) + t426 * (-t424 * t363 + t428 * t552)) * t425, (-t389 * t437 + t433 * t486) * t689 + (-t428 * t480 + (-t395 * t424 - t401 * t669) * t394) * t677 + t429 * (-t424 * t480 + (t395 * t428 - t401 * t679) * t394), t429 * (t424 * t553 + t428 * t478) + (t422 * (t387 * t437 + t667) + t426 * (-t424 * t478 + t428 * t553)) * t425, ((t422 * (t394 * t437 + t693) + t550 * t675) * t425 + t550 * t680) * t401 - t535 * t485, (pkin(2) * t321 - t428 * t312 + pkin(1) * (t321 * t426 + t346 * t422) + t619 * t424) * t429 + (t422 * (-t702 + (-t320 * t424 - t321 * t428) * pkin(10)) + t426 * (-pkin(2) * t320 + t424 * t312 + t428 * t619) - pkin(1) * t320 + qJ(2) * (-t321 * t422 + t346 * t426)) * t425, (pkin(2) * t327 - t313 * t428 + pkin(1) * (t327 * t426 + t354 * t422) + t618 * t424) * t429 + (t422 * (-t701 + (-t326 * t424 - t327 * t428) * pkin(10)) + t426 * (-pkin(2) * t326 + t313 * t424 + t428 * t618) - pkin(1) * t326 + qJ(2) * (-t327 * t422 + t354 * t426)) * t425, (pkin(2) * t315 + pkin(1) * (t315 * t426 + t341 * t422) + t504 * t424) * t429 + (t422 * t563 + qJ(2) * (t341 * t426 - t705) + t533 * t314 + (-pkin(10) * t705 + t426 * t504) * t428) * t425, (t272 * t735 + pkin(2) * t245 + pkin(1) * (t245 * t426 + t272 * t422)) * t429 + (qJ(2) * (-t245 * t422 + t272 * t426) + t638 * t244 + (t422 * (-t244 * t424 - t245 * t428) + t272 * t675) * pkin(10)) * t425, t429 * (t428 * t277 + t424 * t569) + (t422 * (-t433 * t278 + t301 * t437) + t426 * (-t424 * t277 + t428 * t569)) * t425, t429 * (t428 * t236 + t424 * t579) + (t422 * (-t433 * t237 + t258 * t437) + t426 * (-t424 * t236 + t428 * t579)) * t425, t429 * (t428 * t248 + t424 * t574) + (t422 * (-t433 * t250 + t295 * t437) + t426 * (-t424 * t248 + t428 * t574)) * t425, t429 * (t428 * t275 + t424 * t570) + (t422 * (-t433 * t276 + t300 * t437) + t426 * (-t424 * t275 + t428 * t570)) * t425, t429 * (t428 * t249 + t424 * t573) + (t422 * (-t433 * t251 + t296 * t437) + t426 * (-t424 * t249 + t428 * t573)) * t425, t429 * (t428 * t309 + t424 * t564) + (t422 * (-t433 * t310 + t319 * t437) + t426 * (-t424 * t309 + t428 * t564)) * t425, (pkin(2) * t172 + t428 * t118 + pkin(1) * (t172 * t426 + t206 * t422) + t506 * t424) * t429 + (t422 * (-t433 * t119 + t153 * t437 - t171 * t735) + t426 * (-pkin(2) * t171 - t424 * t118) - pkin(1) * t171 + qJ(2) * (t206 * t426 - t715) + (-pkin(10) * t715 + t426 * t506) * t428) * t425, (pkin(2) * t174 + t428 * t123 + pkin(1) * (t174 * t426 + t221 * t422) + t505 * t424) * t429 + (t422 * (-t433 * t124 + t154 * t437 - t173 * t735) + t426 * (-pkin(2) * t173 - t424 * t123) - pkin(1) * t173 + qJ(2) * (t221 * t426 - t714) + (-pkin(10) * t714 + t426 * t505) * t428) * t425, (pkin(2) * t152 + t428 * t103 + pkin(1) * (t152 * t426 + t186 * t422) + t507 * t424) * t429 + (t422 * (t101 * t437 - t433 * t104 - t151 * t735) + t426 * (-pkin(2) * t151 - t424 * t103) - pkin(1) * t151 + qJ(2) * (t186 * t426 - t716) + (-pkin(10) * t716 + t426 * t507) * t428) * t425, (pkin(2) * t60 + t428 * t84 + pkin(1) * (t422 * t82 + t426 * t60) + t521 * t424) * t429 + (t422 * (-t433 * t83 + t437 * t74 - t59 * t735) + t426 * (-pkin(2) * t59 - t424 * t84) - pkin(1) * t59 + qJ(2) * (t426 * t82 - t724) + (-pkin(10) * t724 + t426 * t521) * t428) * t425, t429 * (t428 * t188 + t424 * t586) + (t422 * (-t433 * t190 + t230 * t437) + t426 * (-t424 * t188 + t428 * t586)) * t425, t429 * (t428 * t143 + t424 * t598) + (t422 * (-t433 * t144 + t191 * t437) + t426 * (-t424 * t143 + t428 * t598)) * t425, t429 * (t428 * t167 + t424 * t591) + (t422 * (-t433 * t169 + t200 * t437) + t426 * (-t424 * t167 + t428 * t591)) * t425, t429 * (t428 * t187 + t424 * t587) + (t422 * (-t433 * t189 + t229 * t437) + t426 * (-t424 * t187 + t428 * t587)) * t425, t429 * (t428 * t168 + t424 * t590) + (t422 * (-t433 * t170 + t201 * t437) + t426 * (-t424 * t168 + t428 * t590)) * t425, t429 * (t428 * t224 + t424 * t581) + (t422 * (-t433 * t225 + t261 * t437) + t426 * (-t424 * t224 + t428 * t581)) * t425, (pkin(2) * t94 + t428 * t52 + pkin(1) * (t117 * t422 + t426 * t94) + t513 * t424) * t429 + (t422 * (-t433 * t53 + t437 * t56 - t735 * t93) + t426 * (-pkin(2) * t93 - t424 * t52) - pkin(1) * t93 + qJ(2) * (t117 * t426 - t722) + (-pkin(10) * t722 + t426 * t513) * t428) * t425, (pkin(2) * t96 + t428 * t54 + pkin(1) * (t122 * t422 + t426 * t96) + t512 * t424) * t429 + (t422 * (-t433 * t55 + t437 * t57 - t735 * t95) + t426 * (-pkin(2) * t95 - t424 * t54) - pkin(1) * t95 + qJ(2) * (t122 * t426 - t721) + (-pkin(10) * t721 + t426 * t512) * t428) * t425, (pkin(2) * t76 + t428 * t29 + pkin(1) * (t102 * t422 + t426 * t76) + t514 * t424) * t429 + (t422 * (-t433 * t30 + t437 * t48 - t735 * t75) + t426 * (-pkin(2) * t75 - t424 * t29) - pkin(1) * t75 + qJ(2) * (t102 * t426 - t723) + (-pkin(10) * t723 + t426 * t514) * t428) * t425, (pkin(2) * t22 + t428 * t18 + pkin(1) * (t22 * t426 + t28 * t422) + t522 * t424) * t429 + (t422 * (-t433 * t19 + t20 * t437 - t21 * t735) + t426 * (-pkin(2) * t21 - t424 * t18) - pkin(1) * t21 + qJ(2) * (t28 * t426 - t728) + (-pkin(10) * t728 + t426 * t522) * t428) * t425, t429 * (t428 * t106 + t424 * t604) + (t422 * (-t433 * t108 + t140 * t437) + t426 * (-t424 * t106 + t428 * t604)) * t425, t429 * (t424 * t611 + t428 * t72) + (t422 * (t100 * t437 - t433 * t73) + t426 * (-t424 * t72 + t428 * t611)) * t425, t429 * (t424 * t608 + t428 * t89) + (t422 * (t120 * t437 - t433 * t91) + t426 * (-t424 * t89 + t428 * t608)) * t425, t429 * (t428 * t105 + t424 * t605) + (t422 * (-t433 * t107 + t139 * t437) + t426 * (-t424 * t105 + t428 * t605)) * t425, t429 * (t424 * t607 + t428 * t90) + (t422 * (t121 * t437 - t433 * t92) + t426 * (-t424 * t90 + t428 * t607)) * t425, t429 * (t428 * t134 + t424 * t601) + (t422 * (-t433 * t135 + t175 * t437) + t426 * (-t424 * t134 + t428 * t601)) * t425, (pkin(2) * t40 + t428 * t11 + pkin(1) * (t40 * t426 + t422 * t58) + t524 * t424) * t429 + (t422 * (-t433 * t12 + t23 * t437 - t39 * t735) + t426 * (-pkin(2) * t39 - t424 * t11) - pkin(1) * t39 + qJ(2) * (t426 * t58 - t726) + (-pkin(10) * t726 + t426 * t524) * t428) * t425, (pkin(2) * t44 + t428 * t13 + pkin(1) * (t422 * t61 + t426 * t44) + t523 * t424) * t429 + (t422 * (-t433 * t14 + t24 * t437 - t43 * t735) + t426 * (-pkin(2) * t43 - t424 * t13) - pkin(1) * t43 + qJ(2) * (t426 * t61 - t725) + (-pkin(10) * t725 + t426 * t523) * t428) * t425, (pkin(2) * t32 + t428 * t7 + pkin(1) * (t32 * t426 + t422 * t51) + t526 * t424) * t429 + (t422 * (t10 * t437 - t31 * t735 - t433 * t8) + t426 * (-pkin(2) * t31 - t424 * t7) - pkin(1) * t31 + qJ(2) * (t426 * t51 - t727) + (-pkin(10) * t727 + t426 * t526) * t428) * t425, (pkin(2) * t5 + t428 * t1 + pkin(1) * (t422 * t6 + t426 * t5) + t531 * t424) * t429 + (t422 * (-t433 * t2 + t3 * t437 - t4 * t735) + t426 * (-pkin(2) * t4 - t424 * t1) - pkin(1) * t4 + qJ(2) * (t426 * t6 - t731) + (-pkin(10) * t731 + t426 * t531) * t428) * t425; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t405, t402, t408, -t396, 0, 0, 0, 0, 0, 0, t320, t326, t314, t244, 0, 0, 0, 0, 0, 0, t171, t173, t151, t59, 0, 0, 0, 0, 0, 0, t93, t95, t75, t21, 0, 0, 0, 0, 0, 0, t39, t43, t31, t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t695, t381, t363, t695, t478, t485, -t312, -t313, 0, 0, t277, t236, t248, t275, t249, t309, t118, t123, t103, t84, t188, t143, t167, t187, t168, t224, t52, t54, t29, t18, t106, t72, t89, t105, t90, t134, t11, t13, t7, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t698, t345, t308, -t698, t452, t374, -t193, -t194, 0, 0, t264, t202, t254, t262, t255, t291, t128, t129, t68, t65, t181, t141, t155, t180, t156, t222, t37, t38, t27, t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t318, t317, t270, -t318, -t266, t335, -t126, -t127, 0, 0, t209, t159, t211, -t207, t212, t252, t516, t515, t497, t624; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t287, t286, t219, -t287, -t215, t288, -t78, -t79, 0, 0;];
tauJ_reg  = t77;
